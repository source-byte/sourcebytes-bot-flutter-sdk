// Copyright (c) 2025, Indo-Sakura Software Pvt Ltd. All rights reserved.
// Created By Suresh M, 08/08/2025
library;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:sourcebytes_bot_sdk/src/presentation/provider/bot_provider.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/widget/bot/retail/retail_bot_chat.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/widget/bot/retail/retail_bot_intro.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/widget/bot/retail/retail_bot_login.dart';
import 'package:sourcebytes_bot_sdk/util/enum/auth_type_enum.dart';
import 'package:sourcebytes_bot_sdk/util/extension/context_extension.dart';

class RetailBot extends ConsumerStatefulWidget {
  final double? width, height;
  final TextEditingController? emailController,
      passwordControlled,
      chatController;
  final Function? loginOnTap, backOnTap;
  final Function(String)? onSend;
  final FocusNode? chatFocusNode;
  final ScrollController? scrollController;
  final bool showBackButton;
  const RetailBot({
    super.key,
    this.width,
    this.height,
    this.emailController,
    this.passwordControlled,
    this.loginOnTap,
    this.chatController,
    this.chatFocusNode,
    this.onSend,
    this.scrollController,
    this.showBackButton = true,
    this.backOnTap,
  });

  @override
  ConsumerState<RetailBot> createState() => _RetailBotState();
}

class _RetailBotState extends ConsumerState<RetailBot> {
  late BotNotifierProvider provider;

  @override
  Widget build(BuildContext context) {
    ref.watch(botProvider);
    provider = ref.read(botProvider.notifier);
    double width = widget.width ?? context.screenWidth;
    double height = widget.height ?? context.screenHeight;
    if (height < provider.minimumHeight) {
      height = provider.minimumHeight;
    }
    return Column(
      children: [
        if (provider.showIntro && !provider.showChat)
          RetailBotIntro(
            width: width,
            height: height,
            showBackButton: widget.showBackButton,
            backOnTap: widget.backOnTap,
            chatOnTap: () {
              provider.setShowIntro = false;
              if (provider.authType == AuthTypeEnum.open) {
                provider.setShowChat = true;
              } else {
                provider.setShowLogin = true;
              }
            },
          )
        else if (provider.showLogin && !provider.showChat)
          RetailBotLogin(
            width: width,
            height: height,
            emailController: widget.emailController,
            passwordControlled: widget.passwordControlled,
            sendOnTap: widget.loginOnTap,
            errorMessage: provider.loginErrorMessage,
            backOnTap: widget.backOnTap,
            showBackButton: widget.showBackButton,
          )
        else if (provider.showChat)
          RetailBotChat(
            width: width,
            height: height,
            chatController: widget.chatController,
            chatFocusNode: widget.chatFocusNode,
            onSend: widget.onSend,
            scrollController: widget.scrollController,
            backOnTap: widget.backOnTap,
            showBackButton: widget.showBackButton,
          ),
      ],
    );
  }
}
