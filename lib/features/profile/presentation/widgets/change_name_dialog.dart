import 'package:flutter/material.dart';
import 'package:watch_sports/core/components/btn/elevated_button.dart';
import '../../../../core/components/textfield/textfield.dart';
import '../../../../core/cubits/cached/user_cubit/user_cubit.dart';
import '../../../../i18n/i18n.dart';
import '../../../../setup.dart';

class SettingChangeNameDialog extends StatefulWidget {
  const SettingChangeNameDialog({super.key});

  @override
  State<SettingChangeNameDialog> createState() =>
      _SettingChangeNameDialogState();
}

class _SettingChangeNameDialogState extends State<SettingChangeNameDialog> {
  final formKey = GlobalKey<FormState>();
  final controller = TextEditingController();
  final userCubit = getIt<UserCubit>();

  @override
  void initState() {
    super.initState();

    controller.text = userCubit.name;
  }

  @override
  Widget build(BuildContext context) {
    final strings = localizationInstance;
    return AlertDialog(
      content: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(
              controller: controller,
              hint: strings.nameHint,
              validator: (str) =>
                  str?.trim() != "" && (str?.trim().length ?? 50) < 20
                      ? null
                      : strings.incorrectValue,
            ),
            const SizedBox(height: 15.0),
            CustomElevatedButton(
              title: strings.save,
              onPressed: () {
                if (formKey.currentState?.validate() == true) {
                  userCubit
                      .setUser(userCubit.user.copyWith(name: controller.text));
                  Navigator.of(context).pop();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
