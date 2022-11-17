// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChatModelCWProxy {
  ChatModel createdAt(String createdAt);

  ChatModel id(String id);

  ChatModel latestMessage(MessageModel? latestMessage);

  ChatModel updatedAt(String updatedAt);

  ChatModel users(List<String>? users);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChatModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChatModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ChatModel call({
    String? createdAt,
    String? id,
    MessageModel? latestMessage,
    String? updatedAt,
    List<String>? users,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfChatModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfChatModel.copyWith.fieldName(...)`
class _$ChatModelCWProxyImpl implements _$ChatModelCWProxy {
  final ChatModel _value;

  const _$ChatModelCWProxyImpl(this._value);

  @override
  ChatModel createdAt(String createdAt) => this(createdAt: createdAt);

  @override
  ChatModel id(String id) => this(id: id);

  @override
  ChatModel latestMessage(MessageModel? latestMessage) =>
      this(latestMessage: latestMessage);

  @override
  ChatModel updatedAt(String updatedAt) => this(updatedAt: updatedAt);

  @override
  ChatModel users(List<String>? users) => this(users: users);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChatModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChatModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ChatModel call({
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? latestMessage = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? users = const $CopyWithPlaceholder(),
  }) {
    return ChatModel(
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as String,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      latestMessage: latestMessage == const $CopyWithPlaceholder()
          ? _value.latestMessage
          // ignore: cast_nullable_to_non_nullable
          : latestMessage as MessageModel?,
      updatedAt: updatedAt == const $CopyWithPlaceholder() || updatedAt == null
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as String,
      users: users == const $CopyWithPlaceholder()
          ? _value.users
          // ignore: cast_nullable_to_non_nullable
          : users as List<String>?,
    );
  }
}

extension $ChatModelCopyWith on ChatModel {
  /// Returns a callable class that can be used as follows: `instanceOfChatModel.copyWith(...)` or like so:`instanceOfChatModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChatModelCWProxy get copyWith => _$ChatModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) => ChatModel(
      users:
          (json['users'] as List<dynamic>?)?.map((e) => e as String).toList(),
      latestMessage: json['latestMessage'] == null
          ? null
          : MessageModel.fromJson(
              json['latestMessage'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$ChatModelToJson(ChatModel instance) => <String, dynamic>{
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'id': instance.id,
      'users': instance.users,
      'latestMessage': instance.latestMessage,
    };
