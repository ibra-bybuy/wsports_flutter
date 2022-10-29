import 'package:video_player/video_player.dart';
import 'package:watch_sports/core/cubits/custom/bool_cubit/bool_cubit.dart';
import 'package:watch_sports/providers/video/video_provider.dart';

class BasicVideoProvider implements VideoProvider {
  @override
  final BoolCubit isPlayingCubit = BoolCubit(false);
  late VideoPlayerController controller;
  bool _inited = false;

  @override
  Future<void> init({void Function()? onInit}) async {
    controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        _inited = true;
        onInit?.call();
      });
  }

  @override
  bool get isInitialized => _inited;

  @override
  void play() {
    controller.play();
    isPlayingCubit.set(true);
  }

  @override
  void stop() {
    controller.pause();
    isPlayingCubit.set(false);
  }

  @override
  double get aspectRatio => isInitialized ? controller.value.aspectRatio : 0;

  @override
  VideoPlayerController get videoPlayerController => controller;

  @override
  void dispose() {
    videoPlayerController.dispose();
  }
}
