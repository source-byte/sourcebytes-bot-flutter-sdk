// Copyright (c) 2025, Indo-Sakura Software Pvt Ltd. All rights reserved.
// Created By Suresh M, 07/08/2025

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sourcebytes_bot_sdk/core/model/bot/response/init/init_response_model.dart';
import 'package:sourcebytes_bot_sdk/util/enum/theme_mode_enum.dart';
part 'bot_state.freezed.dart';

@freezed
class BotState with _$BotState {
  const factory BotState({
    @Default(false) bool isInitLoading,
    @Default(false) bool isInitError,
    String? initErrorMessage,
    InitResponseModel? initResponseModel,
    @Default(ThemeModeEnum.others) ThemeModeEnum themeMode,
    ThemeData? themeData,
    @Default(false) bool isLoginLoading,
    @Default(false) bool isLoginError,
    String? loginErrorMessage,
    @Default(false) bool isSendMessageLoading,
    @Default(false) bool showChat,
    @Default(false) bool showLogin,
    @Default(false) bool showIntro,
  }) = _BotState;
}
