// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_firestore_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserFirestoreModelCWProxy {
  UserFirestoreModel createdAt(String createdAt);

  UserFirestoreModel dob(String? dob);

  UserFirestoreModel firstName(String? firstName);

  UserFirestoreModel id(String id);

  UserFirestoreModel lastName(String? lastName);

  UserFirestoreModel login(List<String>? login);

  UserFirestoreModel profileUrl(String? profileUrl);

  UserFirestoreModel updatedAt(String updatedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserFirestoreModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserFirestoreModel(...).copyWith(id: 12, name: "My name")
  /// ````
  UserFirestoreModel call({
    String? createdAt,
    String? dob,
    String? firstName,
    String? id,
    String? lastName,
    List<String>? login,
    String? profileUrl,
    String? updatedAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserFirestoreModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserFirestoreModel.copyWith.fieldName(...)`
class _$UserFirestoreModelCWProxyImpl implements _$UserFirestoreModelCWProxy {
  final UserFirestoreModel _value;

  const _$UserFirestoreModelCWProxyImpl(this._value);

  @override
  UserFirestoreModel createdAt(String createdAt) => this(createdAt: createdAt);

  @override
  UserFirestoreModel dob(String? dob) => this(dob: dob);

  @override
  UserFirestoreModel firstName(String? firstName) => this(firstName: firstName);

  @override
  UserFirestoreModel id(String id) => this(id: id);

  @override
  UserFirestoreModel lastName(String? lastName) => this(lastName: lastName);

  @override
  UserFirestoreModel login(List<String>? login) => this(login: login);

  @override
  UserFirestoreModel profileUrl(String? profileUrl) =>
      this(profileUrl: profileUrl);

  @override
  UserFirestoreModel updatedAt(String updatedAt) => this(updatedAt: updatedAt);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserFirestoreModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserFirestoreModel(...).copyWith(id: 12, name: "My name")
  /// ````
  UserFirestoreModel call({
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? dob = const $CopyWithPlaceholder(),
    Object? firstName = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? lastName = const $CopyWithPlaceholder(),
    Object? login = const $CopyWithPlaceholder(),
    Object? profileUrl = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return UserFirestoreModel(
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as String,
      dob: dob == const $CopyWithPlaceholder()
          ? _value.dob
          // ignore: cast_nullable_to_non_nullable
          : dob as String?,
      firstName: firstName == const $CopyWithPlaceholder()
          ? _value.firstName
          // ignore: cast_nullable_to_non_nullable
          : firstName as String?,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      lastName: lastName == const $CopyWithPlaceholder()
          ? _value.lastName
          // ignore: cast_nullable_to_non_nullable
          : lastName as String?,
      login: login == const $CopyWithPlaceholder()
          ? _value.login
          // ignore: cast_nullable_to_non_nullable
          : login as List<String>?,
      profileUrl: profileUrl == const $CopyWithPlaceholder()
          ? _value.profileUrl
          // ignore: cast_nullable_to_non_nullable
          : profileUrl as String?,
      updatedAt: updatedAt == const $CopyWithPlaceholder() || updatedAt == null
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as String,
    );
  }
}

extension $UserFirestoreModelCopyWith on UserFirestoreModel {
  /// Returns a callable class that can be used as follows: `instanceOfUserFirestoreModel.copyWith(...)` or like so:`instanceOfUserFirestoreModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserFirestoreModelCWProxy get copyWith =>
      _$UserFirestoreModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserFirestoreModel _$UserFirestoreModelFromJson(Map<String, dynamic> json) =>
    UserFirestoreModel(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      dob: json['dob'] as String?,
      login:
          (json['login'] as List<dynamic>?)?.map((e) => e as String).toList(),
      profileUrl: json['profileUrl'] as String?,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$UserFirestoreModelToJson(UserFirestoreModel instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dob': instance.dob,
      'profileUrl': instance.profileUrl,
      'login': instance.login,
    };
