import 'dart:convert';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_application_1/core/extensions/persistent_state.dart';
import 'package:flutter_application_1/shared/data/source/cache_store.dart';
import 'package:flutter_application_1/shared/log/log_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

extension PersistStateExtension on Ref {
  Stream<T> autoCache<T>({
    required CacheStore cacheStore,
    required Future<T> Function() future,
    bool Function(T data)? ifSave,
  }) async* {
    final stopwatch = Stopwatch()..start();
    final cachedData = await cacheStore.getData();
    LogService.logger.info(
      'Hive Cache  retrieve $runtimeType in ${stopwatch.elapsed}',
    );
    if (cachedData != null) yield cachedData;
    final newData = await future();
    LogService.logger.info("future runned $runtimeType");
    if (newData != null) {
      if (newData != cachedData) {
        LogService.logger.info("setting data to cache $runtimeType");
        cacheStore.setData(newData);
      }
      yield newData;
    }
    this.listenSelf((_, data) {
      (data as AsyncValue<T>).whenData((data) {
        LogService.logger.info("listening $runtimeType");
        if (ifSave == null || ifSave(data) == true) {
          LogService.logger.info("ifsave true $runtimeType");
          if (newData != null && newData != data) {
            LogService.logger.info("update data to cache $runtimeType");
            cacheStore.setData(data);
          }
          if (newData == null && cachedData != data) {
            LogService.logger.info("update data to cache $runtimeType");
            cacheStore.setData(data);
          }
        }
      });
    });

    return;

    // final futureProfile = ref.watch(profileProvider.future);
    // final profileCache = ref.watch(cacheProfileProvider);
    // final stopwatch = Stopwatch()..start();
    // print("Type Ref: ${ref.runtimeType}");
    // ref.teste();
    // final profileCached = await profileCache.getData();
    // LogService.logger.info('Hive Cache retrieve in ${stopwatch.elapsed}');
    // if (profileCached != null) yield (profileCached as IList<ProfileState>);
    // final profile = await futureProfile;
    // if (profile != null) {
    //   if (profile != profileCached) {
    //     profileCache.setData(profile);
    //   }
    //   yield profile;
    // }
  }
}

extension PersistStorageExtension on Ref<AsyncValue> {
  Future<T> autoPersist<T extends PersistentState>({
    required String key,
    required T initial,
    required T Function(Map<String, dynamic>) fromJson,
    required bool Function(T data) ifSave,
  }) async {
    final prefs = SharedPreferencesAsync();
    final state = await prefs.getString(key);
    final authState =
        state != null ? getOrNull(() => json.decoder.convert(state)) : null;
    final auth =
        authState != null ? getOrNull(() => fromJson(authState)) : null;

    this.listenSelf((prev, _data) {
      (_data as AsyncValue<T>).whenData((data) {
        if (ifSave(data) && auth != data) {
          print("Saving: $data");
          prefs.setString(key, json.encoder.convert(data.toJson()));
        }
      });
    });

    return auth ?? initial;
  }

  Future<IList<T>> autoPersistList<T extends PersistentState>({
    required String key,
    required Future<IList<T>> Function() initial,
    required T Function(Map<String, dynamic>) fromJson,
    required bool Function(IList<T> data) ifSave,
  }) async {
    final prefs = SharedPreferencesAsync();

    final stopwatch = Stopwatch()..start();

    final List<String>? state = await prefs.getStringList(key);

    final auth =
        state != null
            ? getOrNull(
              () => IList(state.map<T>((e) => fromJson(json.decode(e)))),
            )
            : null;

    this.listenSelf((prev, _data) {
      (_data as AsyncValue<IList<T>>).whenData((data) {
        if (ifSave(data) && auth != data) {
          print("[$key] Saving list: $data");

          final List<String> serializedList =
              data.map((e) => json.encode(e.toJson())).toList();

          prefs.setStringList(key, serializedList);
        }
      });
    });

    LogService.logger.info('Prefs Cache retrieve in ${stopwatch.elapsed}');
    return auth ?? await initial();
  }
}

T? getOrNull<T>(T Function() callF) {
  try {
    return callF();
  } catch (_) {
    return null;
  }
}
