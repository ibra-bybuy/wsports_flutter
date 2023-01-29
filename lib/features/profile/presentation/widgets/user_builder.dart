import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/cubits/cached/user_cubit/user_cubit.dart';
import 'package:watch_sports/core/cubits/cached/user_cubit/user_state.dart';
import 'package:watch_sports/setup.dart';

class UserBuilder extends StatefulWidget {
  final bool Function(UserState, UserState)? buildWhen;
  final Widget Function(BuildContext, UserState) builder;
  const UserBuilder({
    super.key,
    required this.builder,
    this.buildWhen,
  });

  @override
  State<UserBuilder> createState() => _UserBuilderState();
}

class _UserBuilderState extends State<UserBuilder> {
  final userCubit = getIt<UserCubit>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      bloc: userCubit,
      buildWhen: widget.buildWhen,
      builder: widget.builder,
    );
  }
}
