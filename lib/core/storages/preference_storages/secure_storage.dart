import 'package:flutter_mvvm_boilerplate/core/storages/preference_storages/base_storage.dart';
import 'package:flutter_mvvm_boilerplate/core/storages/storage_adapters/base_storage_adapter.dart';
import 'package:flutter_mvvm_boilerplate/core/storages/storage_adapters/secure_storage_adapter.dart';

abstract class SecureStorage extends BaseStorage<String> {
  @override
  Future<BaseStorageAdapter<String>> get adapter async => SecureStorageAdapter();
}
