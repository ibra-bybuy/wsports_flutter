import 'package:json_annotation/json_annotation.dart';

part 'lang.g.dart';

@JsonSerializable()
class LangApi {
  final String code;
  final String name;
  const LangApi({
    this.code = "",
    this.name = "",
  });

  factory LangApi.fromJson(Map<String, dynamic> json) =>
      _$LangApiFromJson(json);

  Map<String, dynamic> toJson() => _$LangApiToJson(this);
}
