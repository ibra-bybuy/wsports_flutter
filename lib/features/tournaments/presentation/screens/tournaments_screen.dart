import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/textfield/sarchfield.dart';
import 'package:watch_sports/features/tournaments/presentation/cubits/tournaments_cubit.dart';
import '../../../../core/components/app_bar/main_app_bar.dart';
import '../../../../setup.dart';

class TournamentsScreen extends StatefulWidget {
  const TournamentsScreen({Key? key}) : super(key: key);

  @override
  State<TournamentsScreen> createState() => _TournamentsScreenState();
}

class _TournamentsScreenState extends State<TournamentsScreen>
    with AutomaticKeepAliveClientMixin {
  final horizontalPadding = 15.0;

  final uiCubit = getIt<TournamentsCubit>();

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: const MainAppBar(
        children: [
          SearchField(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
