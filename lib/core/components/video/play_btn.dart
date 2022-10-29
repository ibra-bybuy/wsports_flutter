import 'package:flutter/material.dart';

class VideoPlayerPlayBtn extends StatelessWidget {
  final void Function()? onTap;
  const VideoPlayerPlayBtn({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.6,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: Colors.black),
        child: IconButton(
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 150.0,
          ),
          onPressed: onTap,
        ),
      ),
    );
  }
}
