// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Stream extends Equatable {
  final String url;
  final String lang;
  const Stream({
    this.url = '',
    this.lang = '',
  });

  Stream copyWith({
    String? url,
    String? lang,
  }) {
    return Stream(
      url: url ?? this.url,
      lang: lang ?? this.lang,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
      'lang': lang,
    };
  }

  factory Stream.fromMap(Map<String, dynamic> map) {
    return Stream(
      url: (map["url"] ?? '') as String,
      lang: (map["lang"] ?? '') as String,
    );
  }

  Map<String, dynamic> toJson() => toMap();

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [url, lang];
}
