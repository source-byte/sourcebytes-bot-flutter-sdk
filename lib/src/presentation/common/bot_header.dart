// Copyright (c) 2025, Indo-Sakura Software Pvt Ltd. All rights reserved.
// Created By Suresh M, 08/08/2025

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/common/back_button.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/common/brand_horizontal_space.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/common/brand_text.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/common/brand_vertical_space.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/common/font/_font.dart';
import 'package:sourcebytes_bot_sdk/theme/colors.dart';

class BotHeader extends StatelessWidget {
  final String title, subTitle;
  final String? logo;
  final bool showBackButton;
  final Function? backOnTap;
  const BotHeader({
    super.key,
    required this.title,
    required this.subTitle,
    this.logo,
    this.showBackButton = true,
    this.backOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BrandVSpace.gap60(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (showBackButton) ...[
                BackButtonWidget(backOnTap: backOnTap),
                BrandVSpace.gap10(),
              ],
              Row(
                children: [
                  BrandHSpace.gap10(),
                  if (logo != null) ...[
                    if (logo!.contains('http'))
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl: logo!,
                          errorWidget: (context, url, error) =>
                              const SizedBox(),
                          placeholder: (context, url) => SizedBox(),
                          width: 35,
                          height: 35,
                          fit: BoxFit.cover,
                        ),
                      )
                    else
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          logo!,
                          width: 35,
                          height: 35,
                          fit: BoxFit.cover,
                          package: 'sourcebytes_bot_sdk',
                        ),
                      ),
                  ],
                  BrandHSpace.gap10(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BrandText(
                          title,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                          fontFamily: BrandFontFamily.gilroyBold,
                        ),
                        BrandText(
                          subTitle,
                          color: AppColors.black.withAlpha(200),
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        BrandVSpace.gap10(),
        Divider(color: AppColors.greyF6),
      ],
    );
  }
}
