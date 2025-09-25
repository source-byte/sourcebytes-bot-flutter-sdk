// Copyright (c) 2025, Indo-Sakura Software Pvt Ltd. All rights reserved.
// Created By Suresh M, 07/08/2025

library;

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sourcebytes_bot_sdk/app_config.dart';
import 'package:sourcebytes_bot_sdk/core/network/web_scoket/web_socket_manager.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/common/brand_text.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/provider/bot_provider.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/widget/bot/health/health_care_bot.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/widget/bot/retail/retail_bot.dart';
import 'package:sourcebytes_bot_sdk/theme/colors.dart';
import 'package:sourcebytes_bot_sdk/util/chat/chat_manager.dart';
import 'package:sourcebytes_bot_sdk/util/enum/auth_type_enum.dart';
import 'package:sourcebytes_bot_sdk/util/enum/role_type_enum.dart';
import 'package:sourcebytes_bot_sdk/util/enum/theme_mode_enum.dart';

class SourceBytes extends ConsumerStatefulWidget {
  final String botId, baseUrl;
  final String? userId;
  final double? width, height;
  final Function(String email, String password)? onLogin;
  final Function(String)? sendMessageOnTap;
  final Function(String?)? onBotMessage;
  final Function? backOnTap;
  final bool showWelcomeScreen, showBackButton;
  const SourceBytes({
    super.key,
    this.userId,
    required this.botId,
    required this.baseUrl,
    this.width,
    this.height,
    this.onLogin,
    this.onBotMessage,
    this.sendMessageOnTap,
    this.showWelcomeScreen = true,
    this.showBackButton = true,
    this.backOnTap,
  });

  @override
  ConsumerState<SourceBytes> createState() => _SourceByteState();
}

class _SourceByteState extends ConsumerState<SourceBytes> {
  late BotNotifierProvider provider;

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordControlled = TextEditingController();

  TextEditingController chatControlled = TextEditingController();

  FocusNode chatFocusNode = FocusNode();

  ScrollController scrollController = ScrollController();

  StreamSubscription? _chatSubscription;

  void fetchBaseUrl() {
    baseUrl = widget.baseUrl;
  }

  Future<void> fetchData() async {
    Future.delayed(const Duration(milliseconds: 200), () {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent + 100,
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInSine,
      );
    });
  }

  Future<void> loginOnTap() async {
    bool isLoggedin = await provider.loginBot(
      email: emailController.text,
      password: passwordControlled.text,
    );
    if (isLoggedin) {
      widget.onLogin?.call(emailController.text, passwordControlled.text);
      provider.setShowChat = true;
    } else {
      provider.setShowChat = false;
    }
  }

  Future<void> onChatSend(String value) async {
    if (value.isEmpty) {
      chatFocusNode.requestFocus();
      return;
    }
    chatControlled.clear();
    widget.sendMessageOnTap?.call(value);
    await provider.sendMessage(message: value, userId: widget.userId);
  }

  ///[init] Defining the bot with bot config
  Future<void> init() async {
    await provider.initBot(botId: widget.botId, userId: widget.userId);
    if (provider.initResponseModel != null) {
      if (provider.initResponseModel?.botConfig?.authenticationType ==
          AuthTypeEnum.open.name) {
        provider.setShowLogin = false;
        if (widget.showWelcomeScreen) {
          provider.setShowChat = false;
          provider.setShowIntro = true;
        } else {
          provider.setShowIntro = false;
          provider.setShowChat = true;
        }
      } else {
        provider.setShowLogin = true;
        if (widget.showWelcomeScreen) {
          provider.setShowIntro = true;
        } else {
          provider.setShowIntro = false;
        }
      }

      if (widget.userId != null &&
          provider.initResponseModel!.botConfig?.needsChathistory == true) {
        await provider.getHistory(userId: widget.userId!, botId: widget.botId);
      }
    }
  }

  Widget child(ThemeModeEnum mode) {
    switch (mode) {
      case ThemeModeEnum.retail:
        return RetailBot(
          width: widget.width,
          height: widget.height,
          emailController: emailController,
          passwordControlled: passwordControlled,
          loginOnTap: loginOnTap,
          chatController: chatControlled,
          chatFocusNode: chatFocusNode,
          onSend: onChatSend,
          scrollController: scrollController,
          showBackButton: widget.showBackButton,
          backOnTap: widget.backOnTap,
        );

      case ThemeModeEnum.healthCare:
        return HealthCareBot();

      case ThemeModeEnum.others:
        return RetailBot(
          width: widget.width,
          height: widget.height,
          emailController: emailController,
          passwordControlled: passwordControlled,
          loginOnTap: loginOnTap,
          chatController: chatControlled,
          chatFocusNode: chatFocusNode,
          onSend: onChatSend,
          scrollController: scrollController,
          showBackButton: widget.showBackButton,
          backOnTap: widget.backOnTap,
        );

      default:
        return RetailBot(
          width: widget.width,
          height: widget.height,
          emailController: emailController,
          passwordControlled: passwordControlled,
          loginOnTap: loginOnTap,
          chatController: chatControlled,
          chatFocusNode: chatFocusNode,
          onSend: onChatSend,
          scrollController: scrollController,
          showBackButton: widget.showBackButton,
          backOnTap: widget.backOnTap,
        );
    }
  }

  Future<void> listenChat() async {
    _chatSubscription = WebSocketManager.chatStream.listen((data) {
      ChatManager().addChat(chat: data);
      if (ChatManager().chat.last.from?.role == RoleTypeEnum.bot.name) {
        widget.onBotMessage?.call(ChatManager().chat.last.message);
      }
      Future.delayed(const Duration(milliseconds: 200), () {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent + 100,
          duration: const Duration(milliseconds: 100),
          curve: Curves.fastLinearToSlowEaseIn,
        );
      });
    });
  }

  @override
  void initState() {
    super.initState();
    fetchBaseUrl();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await init();
      listenChat();
    });
  }

  @override
  void dispose() {
    _chatSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(botProvider);
    provider = ref.read(botProvider.notifier);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: provider.themeData,
      home: Scaffold(
        backgroundColor: AppColors.white,
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (provider.isInitLoading) ...[
              Expanded(child: Center(child: CircularProgressIndicator())),
            ] else if (!provider.isInitLoading && !provider.isInitError) ...[
              child(provider.themeMode),
            ] else ...[
              Center(
                child: BrandText(
                  provider.initErrorMessage ?? 'Something went wrong',
                  fontSize: 20,
                  color: Color(provider.textColor),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
