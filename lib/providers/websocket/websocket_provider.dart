enum WebSocketStatus { connected, disconnected }

abstract class WebSocketProvider {
  void connect({required String url});
  void disconnect();
  void dispose();

  void emit(String event, {dynamic data});
  void onEvent(String event, Function(dynamic) call);

  WebSocketStatus get status;
}
