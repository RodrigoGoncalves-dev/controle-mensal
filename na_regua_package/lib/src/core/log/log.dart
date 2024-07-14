import 'package:na_regua_package/na_regua_package.dart';

class Log extends Logger {
  Logger logger = Logger();
  @override
  Future<void> close() async {
    await logger.close();
  }

  void dc(message, {DateTime? time, Object? error, StackTrace? stackTrace}) {
    logger.d(message);
  }

  @override
  void e(message, {DateTime? time, Object? error, StackTrace? stackTrace}) {
    logger.e(message, error: error, stackTrace: stackTrace, time: time);
  }

  @override
  void f(message, {DateTime? time, Object? error, StackTrace? stackTrace}) {
    logger.f(message, error: error, stackTrace: stackTrace, time: time);
  }

  @override
  void i(message, {DateTime? time, Object? error, StackTrace? stackTrace}) {
    logger.i(message, error: error, stackTrace: stackTrace, time: time);
  }

  @override
  bool isClosed() {
    return logger.isClosed();
  }

  @override
  void log(Level level, message, {DateTime? time, Object? error, StackTrace? stackTrace}) {
    logger.log(level, message, error: error, stackTrace: stackTrace, time: time);
  }

  @override
  void t(message, {DateTime? time, Object? error, StackTrace? stackTrace}) {
    logger.t(message, error: error, stackTrace: stackTrace, time: time);
  }

  @override
  void v(message, {DateTime? time, Object? error, StackTrace? stackTrace}) {
    logger.t(message, error: error, stackTrace: stackTrace, time: time);
  }

  @override
  void w(message, {DateTime? time, Object? error, StackTrace? stackTrace}) {
    logger.w(message, error: error, stackTrace: stackTrace, time: time);
  }

  @override
  void wtf(message, {DateTime? time, Object? error, StackTrace? stackTrace}) {
    logger.log(
      message,
      Level.all,
      error: error,
      stackTrace: stackTrace,
      time: time,
    );
  }
}
