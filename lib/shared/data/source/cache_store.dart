import 'dart:async';

import 'package:flutter_application_1/shared/log/log_service.dart';
import 'package:hive_ce/hive.dart';

typedef FromJson<T> = T Function(Map<String, dynamic>);
typedef ToJson<T> = Map<String, dynamic> Function(T object);

abstract class CacheStore<T> {
  final String storeKey;
  final FromJson<T> fromJson;
  final ToJson<T> toJson;

  CacheStore(this.storeKey, this.fromJson, this.toJson);

  Future<void> setData(T data);
  Future<T?> getData();
}

class CacheStoreImpl<T> implements CacheStore<T> {
  final String _key;
  final FromJson<T> _fromJson;
  final ToJson<T> _toJson;

  late final Future<Box<Map<dynamic, dynamic>>> box;

  @override
  String get storeKey => _key;
  @override
  FromJson<T> get fromJson => _fromJson;
  @override
  ToJson<T> get toJson => _toJson;

  CacheStoreImpl({
    required String key,
    required FromJson<T> fromJson,
    required ToJson<T> toJson,
  }) : _key = key,
       _fromJson = fromJson,
       _toJson = toJson {
    box = Hive.openBox<Map<dynamic, dynamic>>("storageApp");
  }

  @override
  Future<void> setData(T data) async {
    try {
      final json = toJson(data);
      LogService.logger.info("setting cache info: $json");
      await (await box).put(_key, json);
    } catch (e, s) {
      LogService.logger.error("set cache error $_key", e, s);
    }
  }

  @override
  Future<T?> getData() async {
    try {
      final cached =
          (await box).get(_key, defaultValue: <dynamic, dynamic>{})?.cast<String, dynamic>();
      LogService.logger.info("get cache info: $cached");
      if (cached != null && cached.isNotEmpty) {
        return fromJson(cached);
      }
      return null;
    } catch (e, s) {
      LogService.logger.error("get cache error $_key", e, s);
      return null;
    }
  }
}
