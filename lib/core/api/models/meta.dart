import 'package:json_annotation/json_annotation.dart';
import 'package:watch_sports/core/models/pagination.dart';

part 'meta.g.dart';

@JsonSerializable()
class MetaApi extends Pagination {
  final int totalItems;
  final int itemCount;
  final int page;
  const MetaApi({
    this.totalItems = 0,
    this.itemCount = 0,
    int limit = 0,
    int totalPages = 0,
    this.page = 0,
  }) : super(
          total: totalItems,
          totalPages: totalPages,
          currentPage: page,
          limit: limit,
        );

  factory MetaApi.fromJson(Map<String, dynamic> json) =>
      _$MetaApiFromJson(json);

  Map<String, dynamic> toJson() => _$MetaApiToJson(this);
}
