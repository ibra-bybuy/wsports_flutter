import 'package:flutter/material.dart';

class AboutCard extends StatefulWidget {
  final List<Widget> children;
  const AboutCard({super.key, this.children = const []});

  @override
  State<AboutCard> createState() => _AboutCardState();
}

class _AboutCardState extends State<AboutCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 30, 22, 53),
            Color.fromARGB(255, 31, 25, 52),
          ],
        ),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      padding: const EdgeInsets.all(20.0),
      child: MediaQuery.removePadding(
        context: context,
        removeBottom: true,
        removeLeft: true,
        removeRight: true,
        removeTop: true,
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisSpacing: 25,
          mainAxisSpacing: 30,
          crossAxisCount: 3,
          padding: const EdgeInsets.all(0),
          childAspectRatio: 1.25,
          children: widget.children,
        ),
      ),
    );
  }
}
