import 'package:flutter/material.dart';
import 'package:watch_sports/core/models/team.dart';

class FighterScreen extends StatefulWidget {
  final Team item;
  const FighterScreen(this.item, {Key? key}) : super(key: key);

  @override
  State<FighterScreen> createState() => _FighterScreenState();
}

class _FighterScreenState extends State<FighterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("fighter")),
      body: const SizedBox(),
    );
  }
}
