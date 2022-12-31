import 'package:json_annotation/json_annotation.dart';

import '../../../../core/api/models/app_version.dart';

part 'app_versions_response.g.dart';

@JsonSerializable()
class AppVersionsResponse {
  final int statusCode;
  final List<AppVersionApi> data;
  const AppVersionsResponse({
    this.statusCode = 0,
    this.data = const [],
  });

  factory AppVersionsResponse.fromJson(Map<String, dynamic> json) =>
      _$AppVersionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AppVersionsResponseToJson(this);
}
