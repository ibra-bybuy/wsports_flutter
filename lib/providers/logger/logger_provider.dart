abstract class LoggerProvider {
  void e(String msg, {StackTrace? stackTrace, Exception? exception});
  void i(String msg, {StackTrace? stackTrace, Exception? exception});
}
