// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class LangState extends Equatable {
  final String langCode;
  const LangState({
    this.langCode = '',
  });

  LangState copyWith({
    String? langCode,
  }) {
    return LangState(
      langCode: langCode ?? this.langCode,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'langCode': langCode,
    };
  }

  factory LangState.fromMap(Map<String, dynamic> map) {
    return LangState(
      langCode: (map["langCode"] ?? '') as String,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [langCode];
}
