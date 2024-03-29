import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/components/app_bar/simple_app_bar.dart';
import 'package:watch_sports/core/cubits/fetch_state.dart';
import 'package:watch_sports/core/extensions/scroll_controller.dart';
import 'package:watch_sports/core/extensions/string.dart';
import 'package:watch_sports/core/models/team.dart';
import 'package:watch_sports/features/fighter/presentation/cubits/cached/cached_fighter_cubit.dart';
import 'package:watch_sports/features/fighter/presentation/cubits/cached/cached_fighter_state.dart';
import 'package:watch_sports/features/fighter/presentation/widgets/fighter_card.dart';
import '../../../../core/components/loader/alert_loader/alert_loading_listener.dart';
import '../../../../core/components/text/empty.dart';
import '../../../../i18n/i18n.dart';
import '../../../../setup.dart';
import '../cubits/fighter_cubit.dart';

@RoutePage()
class FighterScreen extends StatefulWidget {
  final String title;
  final Team item;
  final Team opponent;
  final bool searchByAvatar;
  const FighterScreen(
    this.item, {
    Key? key,
    required this.title,
    required this.opponent,
    this.searchByAvatar = false,
  }) : super(key: key);

  @override
  State<FighterScreen> createState() => _FighterScreenState();
}

class _FighterScreenState extends State<FighterScreen> {
  final uiCubit = getIt<FighterCubit>();
  final controller = ScrollController();

  @override
  void initState() {
    super.initState();
    uiCubit.setTeam(widget.item);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.searchByAvatar) {
        uiCubit.searchByAvatar(
          widget.item.name,
          widget.item.avatarUrl,
          secondTryQuery: widget.item.avatarUrl.urlName,
        );
      } else {
        uiCubit.searchFighterByOpponentName(
          widget.item.name,
          widget.opponent.name,
          secondTryQuery: widget.item.avatarUrl.urlName,
        );
      }

      controller.addListener(
        () {
          if (controller.isScrolledToBottom) {
            uiCubit.fightsCubit.paginationProvider.onBottomScrolled();
          }
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertLoadListener<FetchState>(
      cubit: uiCubit.fightsCubit,
      isLoading: (state) => state is FetchLoading,
      darkenBackground: false,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 18, 18, 32),
        appBar: SimpleAppBar(
          title: widget.title,
          backgroundColor: const Color.fromARGB(255, 18, 18, 32),
        ),
        body: BlocBuilder<CachedFighterCubit, CachedFighterState>(
          bloc: uiCubit.cachedFighter,
          builder: (context, cachedFighterState) {
            if (cachedFighterState.fighter.firstName.isNotEmpty) {
              return SingleChildScrollView(
                controller: controller,
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
      ),
    );
  }
}
