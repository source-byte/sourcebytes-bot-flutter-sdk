// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_history_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatHistoryResponseModel _$ChatHistoryResponseModelFromJson(
  Map<String, dynamic> json,
) {
  return _ChatHistoryResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ChatHistoryResponseModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "tenant_id")
  String? get tenantId => throw _privateConstructorUsedError;
  @JsonKey(name: "bot")
  String? get bot => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  String? get user => throw _privateConstructorUsedError;
  @JsonKey(name: "messages")
  List<Message>? get messages => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ChatHistoryResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatHistoryResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatHistoryResponseModelCopyWith<ChatHistoryResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatHistoryResponseModelCopyWith<$Res> {
  factory $ChatHistoryResponseModelCopyWith(
    ChatHistoryResponseModel value,
    $Res Function(ChatHistoryResponseModel) then,
  ) = _$ChatHistoryResponseModelCopyWithImpl<$Res, ChatHistoryResponseModel>;
  @useResult
  $Res call({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "tenant_id") String? tenantId,
    @JsonKey(name: "bot") String? bot,
    @JsonKey(name: "user") String? user,
    @JsonKey(name: "messages") List<Message>? messages,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  });
}

/// @nodoc
class _$ChatHistoryResponseModelCopyWithImpl<
  $Res,
  $Val extends ChatHistoryResponseModel
>
    implements $ChatHistoryResponseModelCopyWith<$Res> {
  _$ChatHistoryResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatHistoryResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? tenantId = freezed,
    Object? bot = freezed,
    Object? user = freezed,
    Object? messages = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            tenantId: freezed == tenantId
                ? _value.tenantId
                : tenantId // ignore: cast_nullable_to_non_nullable
                      as String?,
            bot: freezed == bot
                ? _value.bot
                : bot // ignore: cast_nullable_to_non_nullable
                      as String?,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as String?,
            messages: freezed == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<Message>?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatHistoryResponseModelImplCopyWith<$Res>
    implements $ChatHistoryResponseModelCopyWith<$Res> {
  factory _$$ChatHistoryResponseModelImplCopyWith(
    _$ChatHistoryResponseModelImpl value,
    $Res Function(_$ChatHistoryResponseModelImpl) then,
  ) = __$$ChatHistoryResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "tenant_id") String? tenantId,
    @JsonKey(name: "bot") String? bot,
    @JsonKey(name: "user") String? user,
    @JsonKey(name: "messages") List<Message>? messages,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  });
}

/// @nodoc
class __$$ChatHistoryResponseModelImplCopyWithImpl<$Res>
    extends
        _$ChatHistoryResponseModelCopyWithImpl<
          $Res,
          _$ChatHistoryResponseModelImpl
        >
    implements _$$ChatHistoryResponseModelImplCopyWith<$Res> {
  __$$ChatHistoryResponseModelImplCopyWithImpl(
    _$ChatHistoryResponseModelImpl _value,
    $Res Function(_$ChatHistoryResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatHistoryResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? tenantId = freezed,
    Object? bot = freezed,
    Object? user = freezed,
    Object? messages = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$ChatHistoryResponseModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        tenantId: freezed == tenantId
            ? _value.tenantId
            : tenantId // ignore: cast_nullable_to_non_nullable
                  as String?,
        bot: freezed == bot
            ? _value.bot
            : bot // ignore: cast_nullable_to_non_nullable
                  as String?,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as String?,
        messages: freezed == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<Message>?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatHistoryResponseModelImpl implements _ChatHistoryResponseModel {
  const _$ChatHistoryResponseModelImpl({
    @JsonKey(name: "id") this.id,
    @JsonKey(name: "name") this.name,
    @JsonKey(name: "tenant_id") this.tenantId,
    @JsonKey(name: "bot") this.bot,
    @JsonKey(name: "user") this.user,
    @JsonKey(name: "messages") final List<Message>? messages,
    @JsonKey(name: "created_at") this.createdAt,
    @JsonKey(name: "updated_at") this.updatedAt,
  }) : _messages = messages;

  factory _$ChatHistoryResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatHistoryResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "tenant_id")
  final String? tenantId;
  @override
  @JsonKey(name: "bot")
  final String? bot;
  @override
  @JsonKey(name: "user")
  final String? user;
  final List<Message>? _messages;
  @override
  @JsonKey(name: "messages")
  List<Message>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ChatHistoryResponseModel(id: $id, name: $name, tenantId: $tenantId, bot: $bot, user: $user, messages: $messages, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatHistoryResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.bot, bot) || other.bot == bot) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    tenantId,
    bot,
    user,
    const DeepCollectionEquality().hash(_messages),
    createdAt,
    updatedAt,
  );

  /// Create a copy of ChatHistoryResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatHistoryResponseModelImplCopyWith<_$ChatHistoryResponseModelImpl>
  get copyWith =>
      __$$ChatHistoryResponseModelImplCopyWithImpl<
        _$ChatHistoryResponseModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatHistoryResponseModelImplToJson(this);
  }
}

abstract class _ChatHistoryResponseModel implements ChatHistoryResponseModel {
  const factory _ChatHistoryResponseModel({
    @JsonKey(name: "id") final String? id,
    @JsonKey(name: "name") final String? name,
    @JsonKey(name: "tenant_id") final String? tenantId,
    @JsonKey(name: "bot") final String? bot,
    @JsonKey(name: "user") final String? user,
    @JsonKey(name: "messages") final List<Message>? messages,
    @JsonKey(name: "created_at") final DateTime? createdAt,
    @JsonKey(name: "updated_at") final DateTime? updatedAt,
  }) = _$ChatHistoryResponseModelImpl;

  factory _ChatHistoryResponseModel.fromJson(Map<String, dynamic> json) =
      _$ChatHistoryResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "tenant_id")
  String? get tenantId;
  @override
  @JsonKey(name: "bot")
  String? get bot;
  @override
  @JsonKey(name: "user")
  String? get user;
  @override
  @JsonKey(name: "messages")
  List<Message>? get messages;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;

  /// Create a copy of ChatHistoryResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatHistoryResponseModelImplCopyWith<_$ChatHistoryResponseModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "message_author_type")
  String? get messageAuthorType => throw _privateConstructorUsedError;
  @JsonKey(name: "conversation_id")
  String? get conversationId => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "info_source_tenant_files")
  List<InfoSourceTenantFile>? get infoSourceTenantFiles =>
      throw _privateConstructorUsedError;

  /// Serializes this Message to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "message_author_type") String? messageAuthorType,
    @JsonKey(name: "conversation_id") String? conversationId,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "info_source_tenant_files")
    List<InfoSourceTenantFile>? infoSourceTenantFiles,
  });
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? messageAuthorType = freezed,
    Object? conversationId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? infoSourceTenantFiles = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            messageAuthorType: freezed == messageAuthorType
                ? _value.messageAuthorType
                : messageAuthorType // ignore: cast_nullable_to_non_nullable
                      as String?,
            conversationId: freezed == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            infoSourceTenantFiles: freezed == infoSourceTenantFiles
                ? _value.infoSourceTenantFiles
                : infoSourceTenantFiles // ignore: cast_nullable_to_non_nullable
                      as List<InfoSourceTenantFile>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
    _$MessageImpl value,
    $Res Function(_$MessageImpl) then,
  ) = __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "message_author_type") String? messageAuthorType,
    @JsonKey(name: "conversation_id") String? conversationId,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "info_source_tenant_files")
    List<InfoSourceTenantFile>? infoSourceTenantFiles,
  });
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
    _$MessageImpl _value,
    $Res Function(_$MessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? messageAuthorType = freezed,
    Object? conversationId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? infoSourceTenantFiles = freezed,
  }) {
    return _then(
      _$MessageImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        messageAuthorType: freezed == messageAuthorType
            ? _value.messageAuthorType
            : messageAuthorType // ignore: cast_nullable_to_non_nullable
                  as String?,
        conversationId: freezed == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        infoSourceTenantFiles: freezed == infoSourceTenantFiles
            ? _value._infoSourceTenantFiles
            : infoSourceTenantFiles // ignore: cast_nullable_to_non_nullable
                  as List<InfoSourceTenantFile>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl implements _Message {
  const _$MessageImpl({
    @JsonKey(name: "id") this.id,
    @JsonKey(name: "message") this.message,
    @JsonKey(name: "message_author_type") this.messageAuthorType,
    @JsonKey(name: "conversation_id") this.conversationId,
    @JsonKey(name: "created_at") this.createdAt,
    @JsonKey(name: "updated_at") this.updatedAt,
    @JsonKey(name: "info_source_tenant_files")
    final List<InfoSourceTenantFile>? infoSourceTenantFiles,
  }) : _infoSourceTenantFiles = infoSourceTenantFiles;

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "message_author_type")
  final String? messageAuthorType;
  @override
  @JsonKey(name: "conversation_id")
  final String? conversationId;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  final List<InfoSourceTenantFile>? _infoSourceTenantFiles;
  @override
  @JsonKey(name: "info_source_tenant_files")
  List<InfoSourceTenantFile>? get infoSourceTenantFiles {
    final value = _infoSourceTenantFiles;
    if (value == null) return null;
    if (_infoSourceTenantFiles is EqualUnmodifiableListView)
      return _infoSourceTenantFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Message(id: $id, message: $message, messageAuthorType: $messageAuthorType, conversationId: $conversationId, createdAt: $createdAt, updatedAt: $updatedAt, infoSourceTenantFiles: $infoSourceTenantFiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.messageAuthorType, messageAuthorType) ||
                other.messageAuthorType == messageAuthorType) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(
              other._infoSourceTenantFiles,
              _infoSourceTenantFiles,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    message,
    messageAuthorType,
    conversationId,
    createdAt,
    updatedAt,
    const DeepCollectionEquality().hash(_infoSourceTenantFiles),
  );

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(this);
  }
}

abstract class _Message implements Message {
  const factory _Message({
    @JsonKey(name: "id") final String? id,
    @JsonKey(name: "message") final String? message,
    @JsonKey(name: "message_author_type") final String? messageAuthorType,
    @JsonKey(name: "conversation_id") final String? conversationId,
    @JsonKey(name: "created_at") final DateTime? createdAt,
    @JsonKey(name: "updated_at") final DateTime? updatedAt,
    @JsonKey(name: "info_source_tenant_files")
    final List<InfoSourceTenantFile>? infoSourceTenantFiles,
  }) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "message_author_type")
  String? get messageAuthorType;
  @override
  @JsonKey(name: "conversation_id")
  String? get conversationId;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "info_source_tenant_files")
  List<InfoSourceTenantFile>? get infoSourceTenantFiles;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InfoSourceTenantFile _$InfoSourceTenantFileFromJson(Map<String, dynamic> json) {
  return _InfoSourceTenantFile.fromJson(json);
}

/// @nodoc
mixin _$InfoSourceTenantFile {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "file")
  String? get file => throw _privateConstructorUsedError;
  @JsonKey(name: "original_filename")
  String? get originalFilename => throw _privateConstructorUsedError;
  @JsonKey(name: "metadata_text")
  String? get metadataText => throw _privateConstructorUsedError;
  @JsonKey(name: "uploaded_at")
  DateTime? get uploadedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "file_content")
  String? get fileContent => throw _privateConstructorUsedError;
  @JsonKey(name: "OCR_time")
  dynamic get ocrTime => throw _privateConstructorUsedError;
  @JsonKey(name: "file_type")
  String? get fileType => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "uploaded_from")
  String? get uploadedFrom => throw _privateConstructorUsedError;
  @JsonKey(name: "upload_status")
  String? get uploadStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "last_sync")
  DateTime? get lastSync => throw _privateConstructorUsedError;
  @JsonKey(name: "file_size_kb")
  String? get fileSizeKb => throw _privateConstructorUsedError;
  @JsonKey(name: "is_deleted")
  bool? get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: "deleted_date")
  dynamic get deletedDate => throw _privateConstructorUsedError;
  @JsonKey(name: "version")
  int? get version => throw _privateConstructorUsedError;
  @JsonKey(name: "tenant")
  String? get tenant => throw _privateConstructorUsedError;
  @JsonKey(name: "department")
  String? get department => throw _privateConstructorUsedError;

  /// Serializes this InfoSourceTenantFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InfoSourceTenantFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InfoSourceTenantFileCopyWith<InfoSourceTenantFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoSourceTenantFileCopyWith<$Res> {
  factory $InfoSourceTenantFileCopyWith(
    InfoSourceTenantFile value,
    $Res Function(InfoSourceTenantFile) then,
  ) = _$InfoSourceTenantFileCopyWithImpl<$Res, InfoSourceTenantFile>;
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class _$InfoSourceTenantFileCopyWithImpl<
  $Res,
  $Val extends InfoSourceTenantFile
>
    implements $InfoSourceTenantFileCopyWith<$Res> {
  _$InfoSourceTenantFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfoSourceTenantFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? file = freezed,
    Object? originalFilename = freezed,
    Object? metadataText = freezed,
    Object? uploadedAt = freezed,
    Object? fileContent = freezed,
    Object? ocrTime = freezed,
    Object? fileType = freezed,
    Object? isActive = freezed,
    Object? uploadedFrom = freezed,
    Object? uploadStatus = freezed,
    Object? lastSync = freezed,
    Object? fileSizeKb = freezed,
    Object? isDeleted = freezed,
    Object? deletedDate = freezed,
    Object? version = freezed,
    Object? tenant = freezed,
    Object? department = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            file: freezed == file
                ? _value.file
                : file // ignore: cast_nullable_to_non_nullable
                      as String?,
            originalFilename: freezed == originalFilename
                ? _value.originalFilename
                : originalFilename // ignore: cast_nullable_to_non_nullable
                      as String?,
            metadataText: freezed == metadataText
                ? _value.metadataText
                : metadataText // ignore: cast_nullable_to_non_nullable
                      as String?,
            uploadedAt: freezed == uploadedAt
                ? _value.uploadedAt
                : uploadedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            fileContent: freezed == fileContent
                ? _value.fileContent
                : fileContent // ignore: cast_nullable_to_non_nullable
                      as String?,
            ocrTime: freezed == ocrTime
                ? _value.ocrTime
                : ocrTime // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            fileType: freezed == fileType
                ? _value.fileType
                : fileType // ignore: cast_nullable_to_non_nullable
                      as String?,
            isActive: freezed == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool?,
            uploadedFrom: freezed == uploadedFrom
                ? _value.uploadedFrom
                : uploadedFrom // ignore: cast_nullable_to_non_nullable
                      as String?,
            uploadStatus: freezed == uploadStatus
                ? _value.uploadStatus
                : uploadStatus // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastSync: freezed == lastSync
                ? _value.lastSync
                : lastSync // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            fileSizeKb: freezed == fileSizeKb
                ? _value.fileSizeKb
                : fileSizeKb // ignore: cast_nullable_to_non_nullable
                      as String?,
            isDeleted: freezed == isDeleted
                ? _value.isDeleted
                : isDeleted // ignore: cast_nullable_to_non_nullable
                      as bool?,
            deletedDate: freezed == deletedDate
                ? _value.deletedDate
                : deletedDate // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            version: freezed == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as int?,
            tenant: freezed == tenant
                ? _value.tenant
                : tenant // ignore: cast_nullable_to_non_nullable
                      as String?,
            department: freezed == department
                ? _value.department
                : department // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InfoSourceTenantFileImplCopyWith<$Res>
    implements $InfoSourceTenantFileCopyWith<$Res> {
  factory _$$InfoSourceTenantFileImplCopyWith(
    _$InfoSourceTenantFileImpl value,
    $Res Function(_$InfoSourceTenantFileImpl) then,
  ) = __$$InfoSourceTenantFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class __$$InfoSourceTenantFileImplCopyWithImpl<$Res>
    extends _$InfoSourceTenantFileCopyWithImpl<$Res, _$InfoSourceTenantFileImpl>
    implements _$$InfoSourceTenantFileImplCopyWith<$Res> {
  __$$InfoSourceTenantFileImplCopyWithImpl(
    _$InfoSourceTenantFileImpl _value,
    $Res Function(_$InfoSourceTenantFileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InfoSourceTenantFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? file = freezed,
    Object? originalFilename = freezed,
    Object? metadataText = freezed,
    Object? uploadedAt = freezed,
    Object? fileContent = freezed,
    Object? ocrTime = freezed,
    Object? fileType = freezed,
    Object? isActive = freezed,
    Object? uploadedFrom = freezed,
    Object? uploadStatus = freezed,
    Object? lastSync = freezed,
    Object? fileSizeKb = freezed,
    Object? isDeleted = freezed,
    Object? deletedDate = freezed,
    Object? version = freezed,
    Object? tenant = freezed,
    Object? department = freezed,
  }) {
    return _then(
      _$InfoSourceTenantFileImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        file: freezed == file
            ? _value.file
            : file // ignore: cast_nullable_to_non_nullable
                  as String?,
        originalFilename: freezed == originalFilename
            ? _value.originalFilename
            : originalFilename // ignore: cast_nullable_to_non_nullable
                  as String?,
        metadataText: freezed == metadataText
            ? _value.metadataText
            : metadataText // ignore: cast_nullable_to_non_nullable
                  as String?,
        uploadedAt: freezed == uploadedAt
            ? _value.uploadedAt
            : uploadedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        fileContent: freezed == fileContent
            ? _value.fileContent
            : fileContent // ignore: cast_nullable_to_non_nullable
                  as String?,
        ocrTime: freezed == ocrTime
            ? _value.ocrTime
            : ocrTime // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        fileType: freezed == fileType
            ? _value.fileType
            : fileType // ignore: cast_nullable_to_non_nullable
                  as String?,
        isActive: freezed == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool?,
        uploadedFrom: freezed == uploadedFrom
            ? _value.uploadedFrom
            : uploadedFrom // ignore: cast_nullable_to_non_nullable
                  as String?,
        uploadStatus: freezed == uploadStatus
            ? _value.uploadStatus
            : uploadStatus // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastSync: freezed == lastSync
            ? _value.lastSync
            : lastSync // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        fileSizeKb: freezed == fileSizeKb
            ? _value.fileSizeKb
            : fileSizeKb // ignore: cast_nullable_to_non_nullable
                  as String?,
        isDeleted: freezed == isDeleted
            ? _value.isDeleted
            : isDeleted // ignore: cast_nullable_to_non_nullable
                  as bool?,
        deletedDate: freezed == deletedDate
            ? _value.deletedDate
            : deletedDate // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        version: freezed == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as int?,
        tenant: freezed == tenant
            ? _value.tenant
            : tenant // ignore: cast_nullable_to_non_nullable
                  as String?,
        department: freezed == department
            ? _value.department
            : department // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoSourceTenantFileImpl implements _InfoSourceTenantFile {
  const _$InfoSourceTenantFileImpl({
    @JsonKey(name: "id") this.id,
    @JsonKey(name: "file") this.file,
    @JsonKey(name: "original_filename") this.originalFilename,
    @JsonKey(name: "metadata_text") this.metadataText,
    @JsonKey(name: "uploaded_at") this.uploadedAt,
    @JsonKey(name: "file_content") this.fileContent,
    @JsonKey(name: "OCR_time") this.ocrTime,
    @JsonKey(name: "file_type") this.fileType,
    @JsonKey(name: "is_active") this.isActive,
    @JsonKey(name: "uploaded_from") this.uploadedFrom,
    @JsonKey(name: "upload_status") this.uploadStatus,
    @JsonKey(name: "last_sync") this.lastSync,
    @JsonKey(name: "file_size_kb") this.fileSizeKb,
    @JsonKey(name: "is_deleted") this.isDeleted,
    @JsonKey(name: "deleted_date") this.deletedDate,
    @JsonKey(name: "version") this.version,
    @JsonKey(name: "tenant") this.tenant,
    @JsonKey(name: "department") this.department,
  });

  factory _$InfoSourceTenantFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoSourceTenantFileImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "file")
  final String? file;
  @override
  @JsonKey(name: "original_filename")
  final String? originalFilename;
  @override
  @JsonKey(name: "metadata_text")
  final String? metadataText;
  @override
  @JsonKey(name: "uploaded_at")
  final DateTime? uploadedAt;
  @override
  @JsonKey(name: "file_content")
  final String? fileContent;
  @override
  @JsonKey(name: "OCR_time")
  final dynamic ocrTime;
  @override
  @JsonKey(name: "file_type")
  final String? fileType;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "uploaded_from")
  final String? uploadedFrom;
  @override
  @JsonKey(name: "upload_status")
  final String? uploadStatus;
  @override
  @JsonKey(name: "last_sync")
  final DateTime? lastSync;
  @override
  @JsonKey(name: "file_size_kb")
  final String? fileSizeKb;
  @override
  @JsonKey(name: "is_deleted")
  final bool? isDeleted;
  @override
  @JsonKey(name: "deleted_date")
  final dynamic deletedDate;
  @override
  @JsonKey(name: "version")
  final int? version;
  @override
  @JsonKey(name: "tenant")
  final String? tenant;
  @override
  @JsonKey(name: "department")
  final String? department;

  @override
  String toString() {
    return 'InfoSourceTenantFile(id: $id, file: $file, originalFilename: $originalFilename, metadataText: $metadataText, uploadedAt: $uploadedAt, fileContent: $fileContent, ocrTime: $ocrTime, fileType: $fileType, isActive: $isActive, uploadedFrom: $uploadedFrom, uploadStatus: $uploadStatus, lastSync: $lastSync, fileSizeKb: $fileSizeKb, isDeleted: $isDeleted, deletedDate: $deletedDate, version: $version, tenant: $tenant, department: $department)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoSourceTenantFileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.originalFilename, originalFilename) ||
                other.originalFilename == originalFilename) &&
            (identical(other.metadataText, metadataText) ||
                other.metadataText == metadataText) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt) &&
            (identical(other.fileContent, fileContent) ||
                other.fileContent == fileContent) &&
            const DeepCollectionEquality().equals(other.ocrTime, ocrTime) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.uploadedFrom, uploadedFrom) ||
                other.uploadedFrom == uploadedFrom) &&
            (identical(other.uploadStatus, uploadStatus) ||
                other.uploadStatus == uploadStatus) &&
            (identical(other.lastSync, lastSync) ||
                other.lastSync == lastSync) &&
            (identical(other.fileSizeKb, fileSizeKb) ||
                other.fileSizeKb == fileSizeKb) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            const DeepCollectionEquality().equals(
              other.deletedDate,
              deletedDate,
            ) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.tenant, tenant) || other.tenant == tenant) &&
            (identical(other.department, department) ||
                other.department == department));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    file,
    originalFilename,
    metadataText,
    uploadedAt,
    fileContent,
    const DeepCollectionEquality().hash(ocrTime),
    fileType,
    isActive,
    uploadedFrom,
    uploadStatus,
    lastSync,
    fileSizeKb,
    isDeleted,
    const DeepCollectionEquality().hash(deletedDate),
    version,
    tenant,
    department,
  );

  /// Create a copy of InfoSourceTenantFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoSourceTenantFileImplCopyWith<_$InfoSourceTenantFileImpl>
  get copyWith =>
      __$$InfoSourceTenantFileImplCopyWithImpl<_$InfoSourceTenantFileImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoSourceTenantFileImplToJson(this);
  }
}

abstract class _InfoSourceTenantFile implements InfoSourceTenantFile {
  const factory _InfoSourceTenantFile({
    @JsonKey(name: "id") final String? id,
    @JsonKey(name: "file") final String? file,
    @JsonKey(name: "original_filename") final String? originalFilename,
    @JsonKey(name: "metadata_text") final String? metadataText,
    @JsonKey(name: "uploaded_at") final DateTime? uploadedAt,
    @JsonKey(name: "file_content") final String? fileContent,
    @JsonKey(name: "OCR_time") final dynamic ocrTime,
    @JsonKey(name: "file_type") final String? fileType,
    @JsonKey(name: "is_active") final bool? isActive,
    @JsonKey(name: "uploaded_from") final String? uploadedFrom,
    @JsonKey(name: "upload_status") final String? uploadStatus,
    @JsonKey(name: "last_sync") final DateTime? lastSync,
    @JsonKey(name: "file_size_kb") final String? fileSizeKb,
    @JsonKey(name: "is_deleted") final bool? isDeleted,
    @JsonKey(name: "deleted_date") final dynamic deletedDate,
    @JsonKey(name: "version") final int? version,
    @JsonKey(name: "tenant") final String? tenant,
    @JsonKey(name: "department") final String? department,
  }) = _$InfoSourceTenantFileImpl;

  factory _InfoSourceTenantFile.fromJson(Map<String, dynamic> json) =
      _$InfoSourceTenantFileImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "file")
  String? get file;
  @override
  @JsonKey(name: "original_filename")
  String? get originalFilename;
  @override
  @JsonKey(name: "metadata_text")
  String? get metadataText;
  @override
  @JsonKey(name: "uploaded_at")
  DateTime? get uploadedAt;
  @override
  @JsonKey(name: "file_content")
  String? get fileContent;
  @override
  @JsonKey(name: "OCR_time")
  dynamic get ocrTime;
  @override
  @JsonKey(name: "file_type")
  String? get fileType;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "uploaded_from")
  String? get uploadedFrom;
  @override
  @JsonKey(name: "upload_status")
  String? get uploadStatus;
  @override
  @JsonKey(name: "last_sync")
  DateTime? get lastSync;
  @override
  @JsonKey(name: "file_size_kb")
  String? get fileSizeKb;
  @override
  @JsonKey(name: "is_deleted")
  bool? get isDeleted;
  @override
  @JsonKey(name: "deleted_date")
  dynamic get deletedDate;
  @override
  @JsonKey(name: "version")
  int? get version;
  @override
  @JsonKey(name: "tenant")
  String? get tenant;
  @override
  @JsonKey(name: "department")
  String? get department;

  /// Create a copy of InfoSourceTenantFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfoSourceTenantFileImplCopyWith<_$InfoSourceTenantFileImpl>
  get copyWith => throw _privateConstructorUsedError;
}
