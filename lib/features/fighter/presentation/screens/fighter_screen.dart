import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/components/app_bar/simple_app_bar.dart';
import 'package:watch_sports/core/cubits/fetch_state.dart';
import 'package:watch_sports/core/extensions/string.dart';
import 'package:watch_sports/core/models/team.dart';
import 'package:watch_sports/features/fighter/presentation/cubits/cached/cached_fighter_cubit.dart';
import 'package:watch_sports/features/fighter/presentation/cubits/cached/cached_fighter_state.dart';
import 'package:watch_sports/features/fighter/presentation/widgets/fighter_card.dart';

import '../../../../core/components/text/empty.dart';
import '../../../../i18n/i18n.dart';
import '../../../../setup.dart';
import '../cubits/fighter_cubit.dart';

class FighterScreen extends StatefulWidget {
  final Team item;
  final Team opponent;
  const FighterScreen(
    this.item, {
    Key? key,
    required this.opponent,
  }) : super(key: key);

  @override
  State<FighterScreen> createState() => _FighterScreenState();
}

class _FighterScreenState extends State<FighterScreen> {
  final uiCubit = getIt<FighterCubit>();

  @override
  void initState() {
    super.initState();
    uiCubit.setTeam(widget.item);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      uiCubit.call(
        widget.item.name,
        widget.opponent.name,
        secondTryQuery: widget.item.avatarUrl.urlName,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 18, 32),
      appBar: SimpleAppBar(
        title: widget.item.name,
        backgroundColor: const Color.fromARGB(255, 18, 18, 32),
      ),
      body: BlocBuilder<CachedFighterCubit, CachedFighterState>(
        bloc: uiCubit.cachedFighter,
        builder: (context, cachedFighterState) {
          if (cachedFighterState.fighter.firstName.isNotEmpty) {
            return SingleChildScrollView(
              child: FighterCard(cachedFighterState.fighter),
            );
          }

          return BlocBuilder<FighterCubit, FetchState>(
            bloc: uiCubit,
            builder: (context, state) {
              if (state is FetchLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.green,
                  ),
                );
              }

              if (state is FetchError) {
                return EmptyText(
                  state.failure.statusCode == 404
                      ? localizationInstance.couldNotFind
                      : localizationInstance.connectionError,
                  color: Colors.white,
                );
              }

              return const SizedBox();
            },
          );
        },
      ),
    );
  }
}
