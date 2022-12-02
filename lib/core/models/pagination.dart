// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Pagination extends Equatable {
  final int total;
  final int limit;
  final int totalPages;
  final int currentPage;
  const Pagination({
    this.total = 0,
    this.limit = 0,
    this.totalPages = 0,
    this.currentPage = 0,
  });

  Pagination copyWith({
    int? total,
    int? limit,
    int? totalPages,
    int? currentPage,
  }) {
    return Pagination(
      total: total ?? this.total,
      limit: limit ?? this.limit,
      totalPages: totalPages ?? this.totalPages,
      currentPage: currentPage ?? this.currentPage,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'total': total,
      'limit': limit,
      'totalPages': totalPages,
      'currentPage': currentPage,
    };
  }

  factory Pagination.fromMap(Map<String, dynamic> map) {
    return Pagination(
      total: (map["total"] ?? 0) as int,
      limit: (map["limit"] ?? 0) as int,
      totalPages: (map["totalPages"] ?? 0) as int,
      currentPage: (map["currentPage"] ?? 0) as int,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [total, limit, totalPages, currentPage];
}
