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

class LogService {
  static final Talker _instance = Talker(
    observer: RemoteObserver(),
    settings: TalkerSettings(),
  );
  LogService._();

  static Talker get logger => _instance;
}
