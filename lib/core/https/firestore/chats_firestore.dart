import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_mvvm_boilerplate/core/https/firestore/base_cloud_firestore.dart';
import 'package:flutter_mvvm_boilerplate/core/models/firestore/chat_model.dart';

class ChatsFirestore extends BaseCloudFirestore<ChatModel> {
  @override
  String get collectionName => 'chats';

  @override
  Query<Map<String, dynamic>> buildQuery({required Map<String, dynamic> options}) {
    return collectionRef.where(
      'users',
      arrayContains: options['uid'],
    );
  }

  Stream<List<ChatModel>?> streamChats(String uid) {
    return super.stream(
      options: {'uid': uid},
      descending: true,
    );
  }

  @override
  Future<ChatModel> toObject(Map<String, dynamic> json) async {
    return ChatModel.fromJson(json);
  }

  @override
  ChatModel toObjectAsync(Map<String, dynamic> json) {
    return ChatModel.fromJson(json);
  }
}
