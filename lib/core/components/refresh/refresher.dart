import 'package:flutter/material.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

class Refresher extends StatelessWidget {
  final Widget child;
  final RefreshController controller;
  final void Function()? onRefresh;
  final ScrollController? scrollController;
  final ScrollPhysics? physics;
  const Refresher({
    Key? key,
    required this.child,
    required this.controller,
    this.onRefresh,
    this.scrollController,
    this.physics,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      header: const MaterialClassicHeader(),
      physics: physics,
      controller: controller,
      onRefresh: onRefresh,
      scrollController: scrollController,
      child: child,
    );
  }
}
