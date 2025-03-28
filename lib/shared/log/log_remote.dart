import 'package:dio/dio.dart';
import 'package:talker/talker.dart';

class LogRemote {
  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: "https://azapfy.duckdns.org/logs",
      headers: {"Content-Type": "application/stream+json"},
    ),
  );

  static Future<void> sendLog(TalkerData log) async {
    try {
      final Map<String, dynamic> logData = {
        "log": {"level": log.logLevel?.name.toUpperCase() ?? "ERROR"},
        "_msg": log.message ?? "",
        "service": "mobile",
      };

      if (log.stackTrace != null) {
        logData["log"]["trace"] = log.stackTrace;
      }

      await dio.post(
        "/insert/jsonline?_stream_fields=service,instance",
        data: logData,
      );
    } catch (e) {
      //TODO: Critical - o que fazer?
      print("Erro na requisição HTTP para VictoriaLogs: $e");
    }
  }
}
