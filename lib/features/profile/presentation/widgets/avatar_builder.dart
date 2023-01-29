import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/cubits/cached/user_cubit/user_cubit.dart';
import 'package:watch_sports/core/cubits/cached/user_cubit/user_state.dart';
import 'package:watch_sports/setup.dart';

class AvatarBuilder extends StatefulWidget {
  final Widget Function(BuildContext, UserState) builder;
  const AvatarBuilder({
    super.key,
    required this.builder,
  });

  @override
  State<AvatarBuilder> createState() => _AvatarBuilderState();
}

class _AvatarBuilderState extends State<AvatarBuilder> {
  final userCubit = getIt<UserCubit>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      bloc: userCubit,
      buildWhen: (prev, curr) => prev.user?.avatar != curr.user?.avatar,
      builder: widget.builder,
    );
  }
}
