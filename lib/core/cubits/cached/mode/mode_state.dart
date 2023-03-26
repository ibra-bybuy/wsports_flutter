// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ModeState extends Equatable {
  // enum
  final ThemeMode mode;
  const ModeState({
    required this.mode,
  });

  ModeState copyWith({
    ThemeMode? mode,
  }) {
    return ModeState(
      mode: mode ?? this.mode,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode.index,
    };
  }

  factory ModeState.fromMap(Map<String, dynamic> map) {
    return ModeState(
      mode: ThemeMode.values[(map['mode'] ?? 0) as int],
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [mode];
}
