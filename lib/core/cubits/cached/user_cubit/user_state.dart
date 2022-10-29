// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:watch_sports/core/models/user.dart';

class UserState extends Equatable {
  final User? user;
  const UserState({
    this.user,
  });

  UserState copyWith({
    User? user,
  }) {
    return UserState(
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user': user?.toMap(),
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      user: map['user'] != null
          ? User.fromMap((map["user"] ?? Map<String, dynamic>.from({}))
              as Map<String, dynamic>)
          : null,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [user];
}
