import 'package:flutter_mvvm_boilerplate/core/https/firestore/base_cloud_firestore.dart';
import 'package:flutter_mvvm_boilerplate/core/https/firestore/chats_firestore.dart';
import 'package:flutter_mvvm_boilerplate/core/models/firestore/message_model.dart';

class MessageFirestore extends BaseCloudFirestore<MessageModel> {
  final String chatId;

  @override
  String get collectionName => throw UnimplementedError();
  MessageFirestore(this.chatId) : super('chats/$chatId/messages');

  @override
  Future<MessageModel> toObject(Map<String, dynamic> json) async {
    return MessageModel.fromJson(json);
  }

  @override
  Future<void> set({required String? id, required MessageModel data}) async {
    ChatsFirestore().update(id: chatId, data: {'latest_message': data.toJson()});
    return super.set(
      id: id,
      data: data,
    );
  }

  @override
  MessageModel toObjectAsync(Map<String, dynamic> json) {
    return MessageModel.fromJson(json);
  }
}
