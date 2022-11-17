import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter_mvvm_boilerplate/core/models/firestore/base_firestore_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message_model.g.dart';

@CopyWith()
@JsonSerializable()
class MessageModel extends BaseFirestoreModel {
  MessageModel({
    required this.senderId,
    required this.message,
    required this.attachments,
    required String createdAt,
    required String updatedAt,
    required String id,
  }) : super(createdAt, updatedAt, id);

  final String senderId;
  final String? message;
  final List<String>? attachments;

  @override
  Map<String, dynamic> toJson() => _$MessageModelToJson(this);
  factory MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);
}
