import 'package:flutter/foundation.dart';

enum WebSocketStatus { connected, disconnected }

abstract class WebSocketProvider {
  void connect({required String url});
  void disconnect();
  void dispose();

  void emit(String event, {Uint8List data});
  void onEvent(String event, Function(Uint8List) call);

  WebSocketStatus get status;
}
