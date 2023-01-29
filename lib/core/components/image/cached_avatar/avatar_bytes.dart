import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:watch_sports/core/extensions/string.dart';

class AvatarBytes extends StatefulWidget {
  final List<int> bytes;

  final Color backgroundColor;
  final String text;
  const AvatarBytes({
    Key? key,
    this.bytes = const [],
    this.text = "",
    this.backgroundColor = Colors.orange,
  }) : super(key: key);

  @override
  State<AvatarBytes> createState() => _AvatarBytesState();
}

class _AvatarBytesState extends State<AvatarBytes> {
  final Map<String, Widget> _loadedAvatars = {};

  @override
  Widget build(BuildContext context) {
    final String key = widget.bytes.toString();
    if (!_loadedAvatars.containsKey(key)) {
      _loadedAvatars[key] = CircleAvatar(
        radius: 30,
        backgroundColor: widget.backgroundColor,
        foregroundImage: MemoryImage(Uint8List.fromList(widget.bytes)),
        child: Text(
          widget.text.cutName.toUpperCase(),
        ),
      );
    }
    return InkWell(
      child: _loadedAvatars[key],
    );
  }
}
