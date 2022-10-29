import 'package:injectable/injectable.dart';
import 'package:watch_sports/providers/logger/logger_provider.dart';
import 'package:watch_sports/providers/websocket/websocket_provider.dart';
import 'package:socket_io_client/socket_io_client.dart';

const socketIoImpl = "SocketIoImpl";

@Named(socketIoImpl)
@Injectable(as: WebSocketProvider)
class SocketIo extends WebSocketProvider {
  final LoggerProvider logger;
  SocketIo(this.logger);

  Socket? socket;

  @override
  void connect({required String url}) {
    socket = io(
      url,
      OptionBuilder().setTransports(['websocket']).enableForceNew().build(),
    );

    socket?.onConnect((data) {
      logger.i("WebSocket connected $data");
    });

    socket?.onDisconnect((data) {
      logger.i("WebSocket disconnected $data");
    });

    socket?.onError((data) {
      logger.e("WebSocket error $data");
    });

    socket?.onConnectError((data) {
      logger.e("WebSocket connect error $data");
    });
  }

  @override
  void emit(String event, {dynamic data}) {
    logger.i("WebSocket emitting $data on event $event");
    socket?.emit(event, data);
  }

  @override
  void disconnect() {
    socket?.disconnect();
  }

  @override
  void dispose() {
    socket?.dispose();
    socket = null;
  }

  @override
  WebSocketStatus get status {
    return socket?.connected == true
        ? WebSocketStatus.connected
        : WebSocketStatus.disconnected;
  }

  @override
  void onEvent(String event, Function(dynamic p1) call) {
    socket?.on(event, (data) {
      call.call(data);
      logger.i("WebSocket onEvent $event data: $data");
    });
  }
}
