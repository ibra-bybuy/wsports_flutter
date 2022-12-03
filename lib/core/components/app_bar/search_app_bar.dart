import 'package:flutter/material.dart';
import 'package:watch_sports/router/app_router.dart';
import '../../../setup.dart';
import '../textfield/sarchfield.dart';

class SearchAppBar extends StatefulWidget {
  const SearchAppBar({
    super.key,
  });

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  final appRouter = getIt<AppRouter>();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => appRouter.push(SearchRoute()),
      child: const IgnorePointer(
        ignoring: true,
        child: SearchField(),
      ),
    );
  }
}
