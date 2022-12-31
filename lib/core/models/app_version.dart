// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class AppVersion extends Equatable {
  final num versionCode;
  final String url;
  const AppVersion({
    this.versionCode = 0,
    this.url = '',
  });

  AppVersion copyWith({
    num? versionCode,
    String? url,
  }) {
    return AppVersion(
      versionCode: versionCode ?? this.versionCode,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'versionCode': versionCode,
      'url': url,
    };
  }

  factory AppVersion.fromMap(Map<String, dynamic> map) {
    return AppVersion(
      versionCode: (map["versionCode"] ?? 0) as num,
      url: (map["url"] ?? '') as String,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [versionCode, url];
}
