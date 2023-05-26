import 'package:json_annotation/json_annotation.dart';
import '../../models/banner.dart';

part 'banner.g.dart';

@JsonSerializable()
class BannerApi extends Banner {
  const BannerApi({
    String code = "",
    String name = "",
    String avatarUrl = "",
  }) : super(
          code: code,
          name: name,
          avatarUrl: avatarUrl,
        );

  factory BannerApi.fromJson(Map<String, dynamic> json) =>
      _$BannerApiFromJson(json);

  Map<String, dynamic> toJson() => _$BannerApiToJson(this);
}
