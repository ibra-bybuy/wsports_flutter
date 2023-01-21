import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_sports/core/components/adaptive/max_with_setter.dart';
import 'package:watch_sports/core/constants/categories_icons.dart';
import 'package:watch_sports/core/cubits/custom/string_cubit.dart/string_cubit.dart';
import 'package:watch_sports/core/functions/size_config.dart';
import 'package:watch_sports/features/home/presentation/widgets/category_card.dart';
import 'package:watch_sports/i18n/i18n.dart';

enum CategoryEnum {
  football("football"),
  basketball("basketball"),
  tennis("tennis"),
  mma("mma");

  final String value;
  const CategoryEnum(this.value);
}

class HomeCategories extends StatelessWidget {
  final double paddingHorizontal;
  final StringCubit selectedCategoryCubit;
  final void Function(String)? onCategoryClicked;
  const HomeCategories({
    super.key,
    required this.paddingHorizontal,
    required this.selectedCategoryCubit,
    this.onCategoryClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaxWidthSetter(
        width: 500.0,
        child: SizedBox(
          width: double.infinity,
          height: SizeConfig(context, 40)(),
          child: BlocBuilder<StringCubit, String>(
            bloc: selectedCategoryCubit,
            builder: (context, state) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: paddingHorizontal),
                  Expanded(
                    child: HomeCategoryCard(
                      title: localizationInstance.football,
                      enabled: state == CategoryEnum.football.value,
                      onTap: () =>
                          onCategoryClicked?.call(CategoryEnum.football.value),
                      icon: CategoriesIcons.soccer,
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Expanded(
                    child: HomeCategoryCard(
                      title: localizationInstance.mma,
                      enabled: state == CategoryEnum.mma.value,
                      onTap: () =>
                          onCategoryClicked?.call(CategoryEnum.mma.value),
                      icon: CategoriesIcons.mma,
                    ),
                  ),
                  const SizedBox(width: 15.0),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
