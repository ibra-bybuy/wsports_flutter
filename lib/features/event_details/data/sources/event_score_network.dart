import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:watch_sports/core/api/main_api.dart';
import 'package:watch_sports/core/extensions/score_response.dart';
import 'package:watch_sports/providers/logger/logger_provider.dart';
import '../models/event_score_dto.dart';
import 'event_score_source.dart';

const _url = "https://prod-public-api.livescore.com/v1/api";

@LazySingleton(as: EventScoreSource)
class EventScoreNetwork implements EventScoreSource {
  final MainApi api;
  final LoggerProvider loggerProvider;
  EventScoreNetwork(this.api, this.loggerProvider);
  Timer? _timer;

  final Map<String, void Function(List<EventScoreDto>)> _listeners = {};

  @override
  Future<bool> init() async {
    _fetchFootball();
    _timer ??= Timer.periodic(const Duration(seconds: 30), (_) async {
      _fetchFootball();
    });

    return true;
  }

  Future<void> _fetchFootball() async {
    try {
      final response = await api.client(baseUrl: _url).getScores();
      final scores = response.toEventScoreDto;

      _listeners.forEach((key, value) {
        _listeners[key]?.call(scores);
      });
    } catch (e) {
      loggerProvider.e("Error fetching score $e");
    }
  }

  @override
  Future<void> listenToScores(
    String uniqueId,
    void Function(List<EventScoreDto> scores) listener,
  ) async {
    _listeners[uniqueId] = listener;
  }

  @override
  Future<bool> dispose() async {
    _listeners.clear();
    _timer?.cancel();
    return true;
  }
}
