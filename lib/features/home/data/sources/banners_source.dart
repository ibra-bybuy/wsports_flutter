import 'package:watch_sports/features/home/data/models/banners_response.dart';

abstract class BannersSource {
  Future<BannersResponse> call();
}
