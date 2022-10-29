import 'package:flutter/material.dart';

class CustomListViewBuilder<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(BuildContext, int, T) itemBuilder;
  final Axis scrollDirection;
  final bool reverse;
  final ScrollController? controller;
  const CustomListViewBuilder({
    super.key,
    required this.items,
    required this.itemBuilder,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      controller: controller ?? ScrollController(keepScrollOffset: false),
      itemCount: items.length,
      scrollDirection: scrollDirection,
      reverse: reverse,
      itemBuilder: (context, index) {
        return itemBuilder(context, index, items[index]);
      },
    );
  }
}
