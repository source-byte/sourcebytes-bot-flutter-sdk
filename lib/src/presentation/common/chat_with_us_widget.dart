// Copyright (c) 2025, Indo-Sakura Software Pvt Ltd. All rights reserved.
// Created By Suresh M, 08/08/2025

import 'package:flutter/material.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/common/brand_text.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/common/brand_vertical_space.dart';
import 'package:sourcebytes_bot_sdk/theme/colors.dart';

class ChatWithUsWidget extends StatelessWidget {
  final double? width;
  final String? buttonLabel, buttonMessage;
  final Function? onTap;
  const ChatWithUsWidget({
    super.key,
    this.width,
    this.buttonLabel,
    this.buttonMessage,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 4,
              color: AppColors.black.withAlpha(15),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BrandText(
                    color: AppColors.black,
                    buttonLabel ?? 'Chat with us',
                  ),
                  BrandVSpace.gap10(),
                  BrandText(
                    buttonMessage ?? 'We reply immediatly',
                    color: AppColors.greyB0,
                  ),
                ],
              ),

              Icon(Icons.send, color: Theme.of(context).primaryColor, size: 28),
            ],
          ),
        ),
      ),
    );
  }
}
