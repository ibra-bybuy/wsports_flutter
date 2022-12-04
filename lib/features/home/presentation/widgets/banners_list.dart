import 'package:flutter/material.dart';
import 'package:watch_sports/features/home/presentation/widgets/banner_card.dart';
import '../../../../core/functions/size_config.dart';
import '../../../../core/models/banner.dart' as my;

class HomeBannersList extends StatefulWidget {
  final List<my.Banner> items;
  final double paddingHorizontal;
  final void Function(my.Banner)? onTap;
  const HomeBannersList({
    super.key,
    required this.items,
    required this.paddingHorizontal,
    this.onTap,
  });

  @override
  State<HomeBannersList> createState() => _HomeBannersListState();
}

class _HomeBannersListState extends State<HomeBannersList> {
  final _pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig(context, 160)(),
      child: PageView.builder(
        padEnds: false,
        controller: _pageController,
        itemCount: widget.items.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: EdgeInsets.only(
              right: index == widget.items.length - 1
                  ? widget.paddingHorizontal
                  : 5.0,
              left: index == 0 ? widget.paddingHorizontal : 5,
            ),
            child: InkWell(
              onTap: widget.onTap != null
                  ? () => widget.onTap!(widget.items[index])
                  : null,
              child: HomeScreenBannerCard(item: widget.items[index]),
            ),
          );
        },
      ),
    );
  }
}
