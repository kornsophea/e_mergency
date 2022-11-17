import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter_mvvm_boilerplate/core/models/firestore/base_firestore_model.dart';
import 'package:flutter_mvvm_boilerplate/core/models/firestore/message_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_model.g.dart';

@CopyWith()
@JsonSerializable()
class ChatModel extends BaseFirestoreModel {
  ChatModel({
    required this.users,
    required this.latestMessage,
    required String createdAt,
    required String updatedAt,
    required String id,
  }) : super(createdAt, updatedAt, id);

  final List<String>? users;
  final MessageModel? latestMessage;

  @override
  Map<String, dynamic> toJson() => _$ChatModelToJson(this);
  factory ChatModel.fromJson(Map<String, dynamic> json) => _$ChatModelFromJson(json);
}
