import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:watch_sports/providers/logger/logger_provider.dart';

@Singleton(as: LoggerProvider)
class MyLogger implements LoggerProvider {
  final logger = Logger(
    printer: PrettyPrinter(
      colors: true,
      printEmojis: true,
      printTime: true,
    ),
  );

  @override
  void e(String msg, {StackTrace? stackTrace, Exception? exception}) {
    logger.e(msg, exception, stackTrace);
  }

  @override
  void i(String msg, {StackTrace? stackTrace, Exception? exception}) {
    logger.i(msg, exception, stackTrace);
  }
}
