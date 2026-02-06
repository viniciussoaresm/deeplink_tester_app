import 'package:deeplink_tester/entities/deeplink_history_entity.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HistoryViewModel extends ChangeNotifier {
  HistoryViewModel() : _history = [];

  List<DeeplinkHistoryEntity> _history;
  List<DeeplinkHistoryEntity> get history => _history;

  List<DeeplinkHistoryEntity> get latest {
    final count = _history.length;
    if (count <= 4) {
      return _history;
    } else {
      return _history.sublist(count - 4, count).reversed.toList();
    }
  }

  Future<bool> testDeeplink(String url) async {
    if (!url.contains('://')) {
      url = 'https://$url';
    }

    final Uri uri = Uri.parse(url);
    bool sucess = false;

    try {
      sucess = await launchUrl(uri, mode: LaunchMode.externalApplication);
    } catch (e) {
      sucess = false;
    } finally {
      addUrl(url, isFailed: !sucess);
    }
    return sucess;
  }

  void addUrl(String url, {bool isFailed = false}) {
    _history.add(
      DeeplinkHistoryEntity(
        url: url,
        timestamp: DateTime.now(),
        isFailed: isFailed,
      ),
    );
    notifyListeners();
  }

  void clearHistory() {
    _history.clear();
    notifyListeners();
  }
}
