// Copyright (c) 2025, Indo-Sakura Software Pvt Ltd. All rights reserved.
// Created By Suresh M, 08/08/2025

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:sourcebytes_bot_sdk/core/network/web_scoket/web_socket_manager.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/common/bot_header.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/common/brand_vertical_space.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/common/chat_field.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/common/chat_tile.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/provider/bot_provider.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/common/footer_widget.dart';
import 'package:sourcebytes_bot_sdk/theme/colors.dart';
import 'package:sourcebytes_bot_sdk/util/assets/assets.dart';
import 'package:sourcebytes_bot_sdk/util/chat/chat_manager.dart';
import 'package:sourcebytes_bot_sdk/util/enum/role_type_enum.dart';
import 'package:sourcebytes_bot_sdk/util/formator/date_formator.dart';

class RetailBotChat extends ConsumerStatefulWidget {
  final double width;
  final double height;
  final TextEditingController? chatController;
  final Function(String)? onSend;
  final FocusNode? chatFocusNode;
  final ScrollController? scrollController;
  final bool showBackButton;
  final Function? backOnTap;
  const RetailBotChat({
    super.key,
    required this.width,
    required this.height,
    this.chatController,
    this.onSend,
    this.chatFocusNode,
    this.scrollController,
    this.backOnTap,
    this.showBackButton = true,
  });

  @override
  ConsumerState<RetailBotChat> createState() => _RetailBotChatState();
}

class _RetailBotChatState extends ConsumerState<RetailBotChat> {
  late BotNotifierProvider provider;

  Future<void> fetchData() async {
    Future.delayed(const Duration(milliseconds: 200), () {
      if (widget.scrollController != null) {
        widget.scrollController!.animateTo(
          widget.scrollController!.position.maxScrollExtent + 100,
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeInSine,
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      fetchData();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(botProvider);
    provider = ref.read(botProvider.notifier);
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                children: [
                  BotHeader(
                    title: provider.title,
                    subTitle: provider.subTitle,
                    logo: provider.logo,
                    backOnTap: widget.backOnTap,
                    showBackButton: widget.showBackButton,
                  ),
                  Expanded(
                    child: StreamBuilder(
                      stream: WebSocketManager.chatStream,
                      builder: (context, asyncSnapshot) {
                        return ListView.separated(
                          controller: widget.scrollController,
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemCount: ChatManager().chat.length,
                          itemBuilder: (context, index) {
                            var item = ChatManager().chat[index];
                            return ChatTile(
                              isIncoming:
                                  item.from?.role == RoleTypeEnum.bot.name,
                              messages: item.message ?? '--',
                              // imgUrl: item.from?.role == RoleTypeEnum.bot.name
                              //     ? provider.initResponseModel?.avatar?.image
                              //     : '',
                              imgUrl: item.from?.role == RoleTypeEnum.bot.name
                                  ? (provider.logo)
                                  : '',
                              timeStamp: item.timestamp != null
                                  ? DateFormats.time12A.format(item.timestamp!)
                                  : '',
                            );
                          },
                          separatorBuilder: (context, index) =>
                              BrandVSpace.gap20(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            if (provider.isSendMessageLoading)
              Align(
                alignment: Alignment.bottomLeft,
                child: Lottie.asset(
                  Assets.typingLottie,
                  package: 'sourcebytes_bot_sdk',
                  width: 44,
                ),
              ),

            Column(
              children: [
                BrandVSpace.gap10(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ChatField(
                    chatController: widget.chatController,
                    chatFocusNode: widget.chatFocusNode,
                    onSend: widget.onSend,
                    isSendButtonDisabled: provider.isSendMessageLoading,
                  ),
                ),
                if (!provider.showFooter) ...[
                  Divider(color: AppColors.greyF6),
                  FooterWidget(logo: provider.logo),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
