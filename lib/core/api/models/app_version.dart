import 'package:json_annotation/json_annotation.dart';

import '../../models/app_version.dart';

part 'app_version.g.dart';

@JsonSerializable()
class AppVersionApi extends AppVersion {
  final int id;
  final String applicationLabel;
  final String package;
  final String versionName;
  const AppVersionApi({
    this.id = 0,
    this.applicationLabel = "",
    this.package = "",
    super.versionCode,
    this.versionName = "",
    super.url,
  });

  factory AppVersionApi.fromJson(Map<String, dynamic> json) =>
      _$AppVersionApiFromJson(json);

  Map<String, dynamic> toJson() => _$AppVersionApiToJson(this);
}
