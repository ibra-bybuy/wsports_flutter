import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:watch_sports/core/components/app_bar/main_app_bar.dart';
import 'package:watch_sports/core/components/text/google_text.dart';
import 'package:watch_sports/core/components/textfield/sarchfield.dart';
import 'package:watch_sports/core/cubits/cached/event_list_cubit/event_list_cubit.dart';
import 'package:watch_sports/core/cubits/cached/event_list_cubit/event_list_state.dart';
import 'package:watch_sports/core/extensions/scroll_controller.dart';
import 'package:watch_sports/core/functions/size_config.dart';
import 'package:watch_sports/router/app_router.dart';

import '../../../../core/components/listview/listview_builder.dart';
import '../../../../core/components/refresh/refresher.dart';
import '../../../../core/components/text/empty.dart';
import '../../../../core/models/event.dart';
import '../../../../i18n/i18n.dart';
import '../../../../setup.dart';
import '../../../home/presentation/widgets/event_card.dart';
import '../cubits/search_cubit.dart';
import '../cubits/search_state.dart';

class SearchScreen extends StatefulWidget {
  final String? initialQuery;
  final bool showSearch;
  final String? titleText;
  const SearchScreen({
    Key? key,
    this.initialQuery,
    this.showSearch = true,
    this.titleText,
  }) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final uiCubit = getIt<SearchCubit>();
  final appRouter = getIt<AppRouter>();
  final _refreshController = RefreshController(initialRefresh: false);
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
          if (widget.showSearch) ...[
            SearchField(
              onChanged: uiCubit.onChanged,
              autofocus: true,
            ),
          ],
          if (widget.titleText != null) ...[
            GoogleText(
              widget.titleText!,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ],
      ),
      body: BlocBuilder<SearchCubit, SearchState>(
        bloc: uiCubit,
        builder: (context, state) {
          return BlocBuilder<EventListCubit, EventListState>(
            bloc: uiCubit.eventsCubit,
            builder: (context, eventListState) {
              if (eventListState.events.isNotEmpty) {
                return Refresher(
                  scrollController: scrollController,
                  controller: _refreshController,
                  onRefresh: () async {
                    await uiCubit.call();
                    _refreshController.refreshCompleted();
                  },
                  child: SingleChildScrollView(
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