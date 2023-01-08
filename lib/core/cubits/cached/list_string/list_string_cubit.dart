import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'list_string_state.dart';

class CachedListStringCubit extends HydratedCubit<ListStringState> {
  final String uniqueId;
  CachedListStringCubit(this.uniqueId) : super(const ListStringState());

  bool contains(String item) {
    final ind = state.items
        .indexWhere((element) => element.toLowerCase() == item.toLowerCase());
    return ind >= 0;
  }

  void add(String newItem) {
    final items = List<String>.from(state.items);
    items.add(newItem);
    emit(ListStringState(items: items));
  }

  void remove(String item) {
    final items = List<String>.from(state.items);
    items.removeWhere((e) => e.toLowerCase() == item.toLowerCase());
    emit(ListStringState(items: items));
  }

  @override
  String get id => uniqueId;

  @override
  ListStringState? fromJson(Map<String, dynamic> json) =>
      ListStringState.fromMap(json);

  @override
  Map<String, dynamic>? toJson(ListStringState state) => state.toMap();
}
