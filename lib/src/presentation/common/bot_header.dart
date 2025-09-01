// Copyright (c) 2025, Indo-Sakura Software Pvt Ltd. All rights reserved.
// Created By Suresh M, 08/08/2025

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/common/brand_horizontal_space.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/common/brand_text.dart';
import 'package:sourcebytes_bot_sdk/src/presentation/common/brand_vertical_space.dart';
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
          child: Row(
            children: [
              if (showBackButton)
                InkWell(
                  onTap: () {
                    backOnTap?.call();
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.arrow_back_rounded,
                        color: AppColors.black,
                        size: 28,
                      ),
                    ],
                  ),
                ),
              BrandHSpace.gap10(),
              if (logo != null) ...[
                if (logo!.contains('http'))
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CachedNetworkImage(
                      imageUrl: logo!,
                      errorWidget: (context, url, error) => const SizedBox(),
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
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                    BrandText(
                      subTitle,
                      color: AppColors.black.withAlpha(200),
                      fontSize: 12,
                    ),
                  ],
                ),
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
