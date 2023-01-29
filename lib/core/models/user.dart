// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:watch_sports/core/extensions/string.dart';

class User extends Equatable {
  final String name;
  final String avatar;
  const User({
    this.name = '',
    this.avatar = '',
  });

  User copyWith({
    String? name,
    String? avatar,
  }) {
    return User(
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'avatar': avatar,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: (map["name"] ?? '') as String,
      avatar: (map["avatar"] ?? '') as String,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [name, avatar];

  Future<Uint8List?> get getAvatarBytes async {
    if (!avatar.isUrl && avatar.isNotEmpty) {
      try {
        return File(avatar).readAsBytesSync();
      } catch (_) {
        return null;
      }
    }

    return null;
  }
}
