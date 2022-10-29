import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';
import 'package:watch_sports/core/components/video/play_btn.dart';
import 'package:watch_sports/core/cubits/custom/bool_cubit/bool_cubit.dart';
import '../../../providers/video/video_provider.dart';

class CustomVideoPlayer extends StatefulWidget {
  final VideoProvider videoProvider;

  const CustomVideoPlayer({super.key, required this.videoProvider});

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: widget.videoProvider.isInitialized
          ? Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
              ),
              child: AspectRatio(
                aspectRatio: widget.videoProvider.aspectRatio,
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () => widget.videoProvider.stop(),
                      child: VideoPlayer(
                          widget.videoProvider.videoPlayerController),
                    ),
                    BlocBuilder<BoolCubit, bool>(
                      bloc: widget.videoProvider.isPlayingCubit,
                      builder: (context, state) {
                        if (!state && widget.videoProvider.isInitialized) {
                          return VideoPlayerPlayBtn(
                            onTap: () => widget.videoProvider.play(),
                          );
                        }

                        return const SizedBox();
                      },
                    ),
                  ],
                ),
              ),
            )
          : const SizedBox(),
    );
  }
}
