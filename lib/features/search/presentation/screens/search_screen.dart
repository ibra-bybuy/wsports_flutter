import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/components/app_bar/main_app_bar.dart';
import 'package:watch_sports/core/components/textfield/sarchfield.dart';
import 'package:watch_sports/core/cubits/cached/event_list_cubit/event_list_cubit.dart';
import 'package:watch_sports/core/cubits/cached/event_list_cubit/event_list_state.dart';
import 'package:watch_sports/core/extensions/scroll_controller.dart';
import 'package:watch_sports/core/functions/size_config.dart';
import 'package:watch_sports/router/app_router.dart';

import '../../../../core/components/listview/listview_builder.dart';
import '../../../../core/components/text/empty.dart';
import '../../../../core/models/event.dart';
import '../../../../i18n/i18n.dart';
import '../../../../setup.dart';
import '../../../home/presentation/widgets/event_card.dart';
import '../cubits/search_cubit.dart';
import '../cubits/search_state.dart';

class SearchScreen extends StatefulWidget {
  final String? initialQuery;
  const SearchScreen({
    Key? key,
    this.initialQuery,
  }) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final uiCubit = getIt<SearchCubit>();
  final appRouter = getIt<AppRouter>();

  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      scrollController.addListener(() {
        if (scrollController.isScrolledToBottom &&
            uiCubit.currentQuery.isNotEmpty) {
          uiCubit.paginationProvider.onBottomScrolled();
        }
      });
    });

    if (widget.initialQuery != null) {
      uiCubit.onChanged(widget.initialQuery!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final strings = localizationInstance;
    return Scaffold(
      appBar: MainAppBar(
        children: [
          SearchField(
            onChanged: uiCubit.onChanged,
            autofocus: true,
          ),
        ],
      ),
      body: BlocBuilder<SearchCubit, SearchState>(
        bloc: uiCubit,
        builder: (context, state) {
          return BlocBuilder<EventListCubit, EventListState>(
            bloc: uiCubit.eventsCubit,
            builder: (context, eventListState) {
              if (eventListState.events.isNotEmpty) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: CustomListViewBuilder<Event>(
                    items: eventListState.events,
                    itemBuilder: (context, _, item) {
                      return EventCard(
                        event: item,
                        onTap: () {
                          appRouter.push(EventDetailsRoute(event: item));
                        },
                      );
                    },
                  ),
                );
              }

              return Center(
                child: EmptyText(
                  uiCubit.currentQuery.isNotEmpty
                      ? strings.nothingFound
                      : strings.searchHint,
                  fontWeight: null,
                  fontSize: SizeConfig(context, 13.0)(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
