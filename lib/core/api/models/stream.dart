import 'package:json_annotation/json_annotation.dart';
part 'stream.g.dart';

@JsonSerializable()
class StreamApi {
  final String lang;
  final String link;
  const StreamApi({
    this.lang = '',
    this.link = '',
  });

  factory StreamApi.fromJson(Map<String, dynamic> json) =>
      _$StreamApiFromJson(json);

  Map<String, dynamic> toJson() => _$StreamApiToJson(this);
}
