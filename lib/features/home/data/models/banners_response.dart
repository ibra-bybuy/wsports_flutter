import 'package:json_annotation/json_annotation.dart';

import '../../../../core/api/models/banner.dart';

part 'banners_response.g.dart';

@JsonSerializable()
class BannersResponse {
  final bool success;
  final List<BannerApi> data;
  const BannersResponse({
    this.success = false,
    this.data = const [],
  });

  factory BannersResponse.fromJson(Map<String, dynamic> json) =>
      _$BannersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BannersResponseToJson(this);
}
