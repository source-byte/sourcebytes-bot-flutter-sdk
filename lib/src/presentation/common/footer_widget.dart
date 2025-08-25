// Copyright (c) 2025, Indo-Sakura Software Pvt Ltd. All rights reserved.
// Created By Suresh M, 08/08/2025

import 'package:flutter/material.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/common/brand_text.dart';
import 'package:sourcebytes_bot_sdk/theme/colors.dart';
import 'package:sourcebytes_bot_sdk/util/assets/assets.dart';

class FooterWidget extends StatelessWidget {
  final String? logo;
  const FooterWidget({super.key, this.logo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BrandText('POWERED BY', color: AppColors.grey9D, fontSize: 14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Image.asset(
              Assets.sourceBytesLogo,
              width: 18,
              height: 18,
              fit: BoxFit.cover,
              package: 'sourcebytes_bot_sdk',
              errorBuilder: (context, error, stackTrace) => const SizedBox(),
            ),
          ),

          BrandText(
            'SourceBytes.AI',
            color: AppColors.grey9D,
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ],
      ),
    );
  }
}
