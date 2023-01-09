import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

enum GroupedListViewOrder { asc, desc }

class GroupedListViewBuilder<T, K> extends StatelessWidget {
  final List<T> items;
  final K Function(T) groupBy;
  final Widget Function(K)? groupSeparatorBuilder;
  final Widget Function(BuildContext, T)? itemBuilder;
  final int Function(T, T)? itemComparator;
  final bool useStickyGroupSeparators;
  final bool floatingHeader;
  final GroupedListViewOrder order;
  final Widget Function(T)? groupHeaderBuilder;
  const GroupedListViewBuilder(
    this.items, {
    super.key,
    required this.groupBy,
    this.groupSeparatorBuilder,
    this.itemBuilder,
    this.itemComparator,
    this.useStickyGroupSeparators = false,
    this.floatingHeader = false,
    this.order = GroupedListViewOrder.asc,
    this.groupHeaderBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return GroupedListView<T, K>(
      elements: items,
      groupBy: groupBy,
      groupSeparatorBuilder: groupSeparatorBuilder,
      itemBuilder: itemBuilder,
      itemComparator: itemComparator,
      useStickyGroupSeparators: useStickyGroupSeparators,
      floatingHeader: floatingHeader,
      groupHeaderBuilder: groupHeaderBuilder,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      order: order == GroupedListViewOrder.asc
          ? GroupedListOrder.ASC
          : GroupedListOrder.DESC,
    );
  }
}
