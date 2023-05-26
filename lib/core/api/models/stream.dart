import 'package:json_annotation/json_annotation.dart';
import 'package:watch_sports/core/api/models/lang.dart';
import '../../models/stream.dart' as my;
part 'stream.g.dart';

@JsonSerializable()
class StreamApi extends my.Stream {
  final String link;
  final LangApi langApi;
  StreamApi({
    this.link = '',
    this.langApi = const LangApi(),
  }) : super(
          url: link,
          lang: langApi.name,
        );

  factory StreamApi.fromJson(Map<String, dynamic> json) =>
      _$StreamApiFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StreamApiToJson(this);
}
