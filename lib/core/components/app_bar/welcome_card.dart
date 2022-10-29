import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/cubits/cached/user_cubit/user_cubit.dart';
import 'package:watch_sports/core/cubits/cached/user_cubit/user_state.dart';
import 'package:watch_sports/features/settings/presentation/widgets/change_name_dialog.dart';
import 'package:watch_sports/setup.dart';
import '../../../i18n/i18n.dart';
import '../../functions/size_config.dart';
import '../text/google_text.dart';

class AppBarWelcomeCard extends StatefulWidget {
  final String? name;
  final void Function()? onTap;
  const AppBarWelcomeCard({
    super.key,
    this.name,
    this.onTap,
  });

  @override
  State<AppBarWelcomeCard> createState() => _AppBarWelcomeCardState();
}

class _AppBarWelcomeCardState extends State<AppBarWelcomeCard> {
  late final userCubit = getIt<UserCubit>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap ??
          () {
            showDialog(
              context: context,
              builder: (context) {
                return const SettingChangeNameDialog();
              },
            );
          },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GoogleText(
            "${localizationInstance.hello},",
            color: const Color(0XFF000000),
            fontSize: SizeConfig(context, 14.0)(),
          ),
          BlocBuilder<UserCubit, UserState>(
            buildWhen: (prev, curr) => widget.name == null,
            bloc: userCubit,
            builder: (context, state) {
              return GoogleText(
                widget.name?.toUpperCase() ?? userCubit.name,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: SizeConfig(context, 19.0)(),
              );
            },
          ),
        ],
      ),
    );
  }
}
