// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MessageModelCWProxy {
  MessageModel attachments(List<String>? attachments);

  MessageModel createdAt(String createdAt);

  MessageModel id(String id);

  MessageModel message(String? message);

  MessageModel senderId(String senderId);

  MessageModel updatedAt(String updatedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MessageModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MessageModel(...).copyWith(id: 12, name: "My name")
  /// ````
  MessageModel call({
    List<String>? attachments,
    String? createdAt,
    String? id,
    String? message,
    String? senderId,
    String? updatedAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMessageModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMessageModel.copyWith.fieldName(...)`
class _$MessageModelCWProxyImpl implements _$MessageModelCWProxy {
  final MessageModel _value;

  const _$MessageModelCWProxyImpl(this._value);

  @override
  MessageModel attachments(List<String>? attachments) =>
      this(attachments: attachments);

  @override
  MessageModel createdAt(String createdAt) => this(createdAt: createdAt);

  @override
  MessageModel id(String id) => this(id: id);

  @override
  MessageModel message(String? message) => this(message: message);

  @override
  MessageModel senderId(String senderId) => this(senderId: senderId);

  @override
  MessageModel updatedAt(String updatedAt) => this(updatedAt: updatedAt);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MessageModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MessageModel(...).copyWith(id: 12, name: "My name")
  /// ````
  MessageModel call({
    Object? attachments = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? senderId = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return MessageModel(
      attachments: attachments == const $CopyWithPlaceholder()
          ? _value.attachments
          // ignore: cast_nullable_to_non_nullable
          : attachments as List<String>?,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as String,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      senderId: senderId == const $CopyWithPlaceholder() || senderId == null
          ? _value.senderId
          // ignore: cast_nullable_to_non_nullable
          : senderId as String,
      updatedAt: updatedAt == const $CopyWithPlaceholder() || updatedAt == null
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as String,
    );
  }
}

extension $MessageModelCopyWith on MessageModel {
  /// Returns a callable class that can be used as follows: `instanceOfMessageModel.copyWith(...)` or like so:`instanceOfMessageModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MessageModelCWProxy get copyWith => _$MessageModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
      senderId: json['senderId'] as String,
      message: json['message'] as String?,
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'id': instance.id,
      'senderId': instance.senderId,
      'message': instance.message,
      'attachments': instance.attachments,
    };
