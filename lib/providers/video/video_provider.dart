import 'package:video_player/video_player.dart';

import '../../core/cubits/custom/bool_cubit/bool_cubit.dart';

abstract class VideoProvider {
  BoolCubit get isPlayingCubit;

  Future<void> init({void Function()? onInit});

  VideoPlayerController get videoPlayerController;
  double get aspectRatio;
  bool get isInitialized;

  void play();
  void stop();

  void dispose();
}
