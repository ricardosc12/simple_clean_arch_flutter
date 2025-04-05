import 'package:fast_immutable_collections/fast_immutable_collections.dart';

class JsonListCodec {
  static IList<T> fromJson<T>(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    return List.generate(json.length, (index) {
      final itemJson = Map<String, dynamic>.from(json[index.toString()]!);
      return fromJson(itemJson);
    }).lock;
  }

  static Map<String, dynamic> toJson<T>(
    IList<T> list,
    Map<String, dynamic> Function(T) toJson,
  ) {
    return list.unlock.asMap().map(
      (index, value) => MapEntry(index.toString(), toJson(value)),
    );
  }
}
