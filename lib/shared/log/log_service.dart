import 'package:talker_flutter/talker_flutter.dart';

class RemoteObserver extends TalkerObserver {
  RemoteObserver();

  @override
  void onLog(TalkerData log) {
    //TODO: IS_PRODUCTION_MODE: THEN=>
    //TODO: STACK_TRACE
    // LogRemote.sendLog(log);
    super.onLog(log);
  }
}

abstract class LogServiceI {
  void critical(dynamic msg, [Object? exception, StackTrace? stackTrace]);
  void info(dynamic msg, [Object? exception, StackTrace? stackTrace]);
  void debug(dynamic msg, [Object? exception, StackTrace? stackTrace]);
  void error(dynamic msg, [Object? exception, StackTrace? stackTrace]);
  void log(dynamic msg, [Object? exception, StackTrace? stackTrace]);
  void verbose(dynamic msg, [Object? exception, StackTrace? stackTrace]);
  void warning(dynamic msg, [Object? exception, StackTrace? stackTrace]);
}

class LogService {
  static final Talker _instance = Talker(
    observer: RemoteObserver(),
    settings: TalkerSettings(),
  );
  LogService._();

  static Talker get logger => _instance;
}
