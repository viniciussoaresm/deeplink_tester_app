class DeeplinkHistoryEntity {
  DeeplinkHistoryEntity({
    required this.url,
    required this.timestamp,
    this.isFailed = false,
  });
  final String url;
  final DateTime timestamp;
  final bool isFailed;
}
