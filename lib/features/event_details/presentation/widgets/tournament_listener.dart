import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/cubits/fetch_state.dart';
import '../../../../core/models/event.dart';
import '../../../tournament_details/domain/entities/tournament_details_response_entities.dart';
import '../../../tournament_details/presentation/cubits/tournament_details_cubit.dart';

class EventTournamentByLinkListener extends StatefulWidget {
  final TournamentDetailsCubit cubit;
  final Event? eventByLink;
  final Widget child;
  final void Function(Event)? onSuccess;
  const EventTournamentByLinkListener(
    this.cubit, {
    super.key,
    this.eventByLink,
    required this.child,
    this.onSuccess,
  });

  @override
  State<EventTournamentByLinkListener> createState() =>
      _EventTournamentByLinkListenerState();
}

class _EventTournamentByLinkListenerState
    extends State<EventTournamentByLinkListener> {
  @override
  void initState() {
    super.initState();

    if (widget.eventByLink != null) {
      widget.cubit.setEvents(widget.eventByLink!, [widget.eventByLink!]);
      widget.cubit.load();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TournamentDetailsCubit,
        FetchState<TournamentDetailsResponseEntities>>(
      bloc: widget.cubit,
      listener: (context, state) {
        if (state is FetchLoaded && widget.eventByLink != null) {
          final items =
              (state as FetchLoaded<TournamentDetailsResponseEntities>)
                  .response
                  .items;
          final itemInd = items.indexWhere(
              (element) => element.startTime == widget.eventByLink!.startTime);
          if (itemInd >= 0) {
            widget.onSuccess?.call(items[itemInd]);
          }
        }
      },
      child: widget.child,
    );
  }
}
