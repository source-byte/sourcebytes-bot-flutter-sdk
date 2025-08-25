// Copyright (c) 2025, Indo-Sakura Software Pvt Ltd. All rights reserved.
// Created By Suresh M, 19/03/2025

import 'package:flutter/material.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/common/brand_horizontal_space.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/common/brand_text_field.dart';
import 'package:sourcebytes_bot_sdk/theme/colors.dart';

class ChatField extends StatelessWidget {
  final Function? micOnTap;
  final Function(String messages)? onSend;
  final TextEditingController? chatController;
  final FocusNode? chatFocusNode;
  final bool isSendButtonDisabled;
  const ChatField({
    super.key,
    this.micOnTap,
    this.onSend,
    this.chatController,
    this.chatFocusNode,
    this.isSendButtonDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: BrandTextField(
            filled: true,
            hintText: 'Type here',
            fillColor: AppColors.white,
            controller: chatController,
            focusNode: chatFocusNode,
            // suffixIcon: BrandIconButon(
            //   child: Icon(Icons.mic, color: AppColors.greyA3),
            //   onTap: () {
            //     micOnTap?.call();
            //   },
            // ),
          ),
        ),
        BrandHSpace.gap10(),
        InkWell(
          onTap: () {
            if (!isSendButtonDisabled) {
              onSend?.call(chatController?.text ?? '');
            }
          },
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: SizedBox(
              width: 54,
              height: 54,
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Icon(
                  Icons.send,
                  color: isSendButtonDisabled
                      ? Theme.of(context).primaryColor.withAlpha(100)
                      : Theme.of(context).primaryColor,
                  size: 28,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
