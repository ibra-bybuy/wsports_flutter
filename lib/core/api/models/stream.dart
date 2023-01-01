import 'package:json_annotation/json_annotation.dart';
import '../../models/stream.dart' as my;
part 'stream.g.dart';

@JsonSerializable()
class StreamApi extends my.Stream {
  final String link;
  const StreamApi({
    this.link = '',
    String lang = "",
  }) : super(
          lang: lang,
          url: link,
        );

  factory StreamApi.fromJson(Map<String, dynamic> json) =>
      _$StreamApiFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StreamApiToJson(this);
}
