import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jiffy/jiffy.dart';

class DateTimeAdapter implements JsonConverter<DateTime, String> {
  const DateTimeAdapter();

  @override
  DateTime fromJson(String json) {
    return Jiffy.parse(json, pattern: "yyyy-MM-dd HH:mm:ss").dateTime;
  }

  @override
  String toJson(DateTime object) {
    return Jiffy.parseFromDateTime(
      object,
    ).format(pattern: "yyyy-MM-dd HH:mm:ss");
  }
}
