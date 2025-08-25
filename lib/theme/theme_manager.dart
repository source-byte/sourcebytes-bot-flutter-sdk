// Copyright (c) 2025, Indo-Sakura Software Pvt Ltd. All rights reserved.
// Created By Suresh M, 08/08/2025

import 'package:flutter/material.dart';
import 'package:sourcebytes_bot_sdk/theme/source_byte_theme.dart';
import 'package:sourcebytes_bot_sdk/util/enum/theme_mode_enum.dart';
import 'package:sourcebytes_bot_sdk/util/extension/string_extension.dart';

abstract class ThemeManager {
  static ThemeData them({ThemeModeEnum? mode, String? primaryColor}) {
    switch (mode) {
      case ThemeModeEnum.others:
        return SourceByteTheme.others(primaryColor: primaryColor?.toColor);
      case ThemeModeEnum.retail:
        return SourceByteTheme.retail(primaryColor: primaryColor?.toColor);
      case ThemeModeEnum.banking:
        return SourceByteTheme.banking(primaryColor: primaryColor?.toColor);
      case ThemeModeEnum.education:
        return SourceByteTheme.education(primaryColor: primaryColor?.toColor);
      case ThemeModeEnum.healthCare:
        return SourceByteTheme.healthCare(primaryColor: primaryColor?.toColor);
      case ThemeModeEnum.insurance:
        return SourceByteTheme.insurance(primaryColor: primaryColor?.toColor);
      case ThemeModeEnum.enterprise:
        return SourceByteTheme.enterprise(primaryColor: primaryColor?.toColor);
      default:
        return SourceByteTheme.others(primaryColor: primaryColor?.toColor);
    }
  }
}
