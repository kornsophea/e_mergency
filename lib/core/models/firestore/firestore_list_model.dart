import 'package:flutter_mvvm_boilerplate/core/models/firestore/base_firestore_model.dart';

class FirestoreListModel<T extends BaseFirestoreModel> {
  final List<T> items;
  final String? nextPageKey;

  FirestoreListModel({
    required this.items,
    this.nextPageKey,
  });
}
