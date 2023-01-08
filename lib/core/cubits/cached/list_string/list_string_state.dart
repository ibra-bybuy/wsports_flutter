// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ListStringState extends Equatable {
  final List<String> items;
  const ListStringState({
    this.items = const [],
  });

  ListStringState copyWith({
    List<String>? items,
  }) {
    return ListStringState(
      items: items ?? this.items,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items,
    };
  }

  factory ListStringState.fromMap(Map<String, dynamic> map) {
    return ListStringState(
      items: List<String>.from(
        ((map['items'] ?? const <String>[]) as List<String>),
      ),
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [items];
}
