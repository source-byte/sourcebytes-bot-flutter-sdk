// Copyright (c) 2025, Indo-Sakura Software Pvt Ltd. All rights reserved.
// Created By Suresh M, 10/08/2025

import 'dart:async';
import 'dart:convert';

import 'package:sourcebytes_bot_sdk/core/model/bot/request/send_message/send_message_request_model.dart';
import 'package:sourcebytes_bot_sdk/core/model/bot/response/chat/chat_response_model.dart';
import 'package:sourcebytes_bot_sdk/core/network/endpoint/bot_endpoint.dart';
import 'package:sourcebytes_bot_sdk/core/network/network.dart';
import 'package:sourcebytes_bot_sdk/util/enum/role_type_enum.dart';

abstract class WebSocketManager {
  static final StreamController<ChatResponseModel> _chatController =
      StreamController.broadcast();

  static Stream<ChatResponseModel> get chatStream => _chatController.stream;

  static Future<void> sendMessage({
    required SendMessageRequestModel requestModel,
    required bool isAuth,
  }) async {
    _chatController.add(
      ChatResponseModel(
        from: Participant(role: RoleTypeEnum.user.name),
        message: requestModel.message,
        timestamp: DateTime.now(),
      ),
    );
    try {
      var response = await NetworkClient.postStream(
        endPoint: BotEndpoint.sendMessage,
        body: requestModel.toJson(),
        isAuth: isAuth,
      );

      response.toStringStream().listen((onData) {
        try {
          var k = onData.split('''data: {"full_response": ''');
          var j = k.last.split('''data: {"result_data": ''');
          var index = j.first.lastIndexOf('}');
          var o = j.first.substring(0, index);
          var res = '''{"full_response": $o}''';
          Map<String, dynamic> map = jsonDecode(res);
          _chatController.add(
            ChatResponseModel(
              from: Participant(id: map["bot_id"], role: RoleTypeEnum.bot.name),
              message: map["full_response"],
              timestamp: DateTime.now(),
              to: Participant(id: RoleTypeEnum.user.name),
            ),
          );
        } catch (e) {
          Map<String, dynamic> map = jsonDecode(onData);

          _chatController.add(
            ChatResponseModel(
              from: Participant(id: null, role: RoleTypeEnum.bot.name),
              message: map["message"],
              timestamp: DateTime.now(),
              to: Participant(id: RoleTypeEnum.user.name),
            ),
          );
        }
      });
    } catch (e) {
      _chatController.add(
        ChatResponseModel(
          from: Participant(id: null, role: RoleTypeEnum.bot.name),
          message: 'Something went wrong...',
          timestamp: DateTime.now(),
          to: Participant(id: RoleTypeEnum.user.name),
        ),
      );
    }
  }
}
