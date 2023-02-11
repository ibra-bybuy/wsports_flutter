import 'package:watch_sports/core/models/pagination.dart';

class PaginationProvider {
  late Pagination _pagination;
  final int limit;
  final int page;
  final Future<int> Function(Pagination) request;
  bool _loading = false;
  bool _hasElements = true;
  PaginationProvider({
    required this.limit,
    required this.page,
    required this.request,
  }) {
    _pagination = Pagination(
      limit: limit,
      currentPage: page,
    );
  }

  Future<void> onBottomScrolled() async {
    if (hasNext && !_loading) {
      _loading = true;
      _pagination =
          _pagination.copyWith(currentPage: _pagination.currentPage + 1);
      final loadedElements = await request(_pagination);
      if (loadedElements < 1) {
        _hasElements = false;
      }
      _loading = false;
    }
  }

  void setTotalPages(int pages) {
    _pagination = _pagination.copyWith(totalPages: pages);
  }

  bool get hasNext {
    if (_pagination.totalPages < 1) {
      return _hasElements;
    }
    return _pagination.currentPage < _pagination.totalPages;
  }

  void clear() {
    _loading = false;
    _hasElements = true;
    _pagination = Pagination(
      limit: limit,
      currentPage: page,
    );
  }
}
