// Copyright (c) 2025, Indo-Sakura Software Pvt Ltd. All rights reserved.
// Created By Suresh M, 25/08/2025

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_history_response_model.freezed.dart';
part 'chat_history_response_model.g.dart';

@freezed
class ChatHistoryResponseModel with _$ChatHistoryResponseModel {
  const factory ChatHistoryResponseModel({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "tenant_id") String? tenantId,
    @JsonKey(name: "bot") String? bot,
    @JsonKey(name: "user") String? user,
    @JsonKey(name: "messages") List<Message>? messages,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _ChatHistoryResponseModel;

  factory ChatHistoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ChatHistoryResponseModelFromJson(json);
}

@freezed
class Message with _$Message {
  const factory Message({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "message_author_type") String? messageAuthorType,
    @JsonKey(name: "conversation_id") String? conversationId,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "info_source_tenant_files")
    List<InfoSourceTenantFile>? infoSourceTenantFiles,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

@freezed
class InfoSourceTenantFile with _$InfoSourceTenantFile {
  const factory InfoSourceTenantFile({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "file") String? file,
    @JsonKey(name: "original_filename") String? originalFilename,
    @JsonKey(name: "metadata_text") String? metadataText,
    @JsonKey(name: "uploaded_at") DateTime? uploadedAt,
    @JsonKey(name: "file_content") String? fileContent,
    @JsonKey(name: "OCR_time") dynamic ocrTime,
    @JsonKey(name: "file_type") String? fileType,
    @JsonKey(name: "is_active") bool? isActive,
    @JsonKey(name: "uploaded_from") String? uploadedFrom,
    @JsonKey(name: "upload_status") String? uploadStatus,
    @JsonKey(name: "last_sync") DateTime? lastSync,
    @JsonKey(name: "file_size_kb") String? fileSizeKb,
    @JsonKey(name: "is_deleted") bool? isDeleted,
    @JsonKey(name: "deleted_date") dynamic deletedDate,
    @JsonKey(name: "version") int? version,
    @JsonKey(name: "tenant") String? tenant,
    @JsonKey(name: "department") String? department,
  }) = _InfoSourceTenantFile;

  factory InfoSourceTenantFile.fromJson(Map<String, dynamic> json) =>
      _$InfoSourceTenantFileFromJson(json);
}
