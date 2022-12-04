import 'package:json_annotation/json_annotation.dart';
import '../../models/banner.dart';

part 'banner.g.dart';

@JsonSerializable()
class BannerApi extends Banner {
  final String name;
  final String endTime;
  final String link;
  const BannerApi({
    this.name = "",
    this.endTime = "",
    this.link = "",
  }) : super(
          imageUrl: link,
          routeUrl: name,
        );

  factory BannerApi.fromJson(Map<String, dynamic> json) =>
      _$BannerApiFromJson(json);

  Map<String, dynamic> toJson() => _$BannerApiToJson(this);
}
