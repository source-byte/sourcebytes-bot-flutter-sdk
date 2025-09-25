// Copyright (c) 2025, Indo-Sakura Software Pvt Ltd. All rights reserved.
// Created By Suresh M, 25/09/2025

import 'package:flutter/material.dart';
import 'package:sourcebytes_bot_sdk/theme/colors.dart';

class BackButtonWidget extends StatelessWidget {
  final Function? backOnTap;
  const BackButtonWidget({super.key, this.backOnTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        backOnTap?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.greyF6,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                Icons.arrow_back_ios_rounded,
                color: AppColors.black,
                size: 28,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
