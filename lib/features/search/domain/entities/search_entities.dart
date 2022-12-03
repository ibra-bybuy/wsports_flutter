// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class SearchEntities extends Equatable {
  final String query;
  final int limit;
  final int page;
  const SearchEntities({
    this.query = '',
    this.limit = 0,
    this.page = 0,
  });

  SearchEntities copyWith({
    String? query,
    int? limit,
    int? page,
  }) {
    return SearchEntities(
      query: query ?? this.query,
      limit: limit ?? this.limit,
      page: page ?? this.page,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': query,
      'limit': limit,
      'page': page,
    };
  }

  factory SearchEntities.fromMap(Map<String, dynamic> map) {
    return SearchEntities(
      query: (map["query"] ?? '') as String,
      limit: (map["limit"] ?? 0) as int,
      page: (map["page"] ?? 0) as int,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [query, limit, page];
}
