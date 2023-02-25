import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/cubits/fetch_state.dart';
import '../../../../router/app_router.dart';
import '../../../../setup.dart';
import '../cubits/event_details_cubit.dart';

class EventDetailsCubitListener extends StatelessWidget {
  final EventDetailsCubit uiCubit;
  final Widget child;
  const EventDetailsCubitListener(
    this.uiCubit, {
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<EventDetailsCubit, FetchState>(
      bloc: uiCubit,
      listener: (context, state) {
        if (state is FetchLoaded) {
          if (uiCubit.eventCubit.state.isMma) {
            getIt<AppRouter>().replace(
                TournamentDetailsRoute(events: [uiCubit.eventCubit.state]));
          }
        }
      },
      child: child,
    );
  }
}
