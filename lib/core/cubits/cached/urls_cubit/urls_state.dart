// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class UrlsState extends Equatable {
  final String baseApiUrl;
  final String commentsUrl;
  const UrlsState({
    this.baseApiUrl = '',
    this.commentsUrl = '',
  });

  UrlsState copyWith({
    String? baseApiUrl,
    String? commentsUrl,
  }) {
    return UrlsState(
      baseApiUrl: baseApiUrl ?? this.baseApiUrl,
      commentsUrl: commentsUrl ?? this.commentsUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseApiUrl': baseApiUrl,
      'commentsUrl': commentsUrl,
    };
  }

  factory UrlsState.fromMap(Map<String, dynamic> map) {
    return UrlsState(
      baseApiUrl: (map["baseApiUrl"] ?? '') as String,
      commentsUrl: (map["commentsUrl"] ?? '') as String,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [baseApiUrl, commentsUrl];
}
