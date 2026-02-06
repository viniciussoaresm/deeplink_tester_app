import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimestampText extends StatelessWidget {
  final DateTime timestamp;
  final TextStyle? style;

  const TimestampText({
    super.key,
    required this.timestamp,
    this.style,
  });

  bool _isToday(DateTime date) {
    final now = DateTime.now();
    return now.year == date.year &&
        now.month == date.month &&
        now.day == date.day;
  }

  @override
  Widget build(BuildContext context) {
    Intl.defaultLocale = 'pt_BR';

    final isToday = _isToday(timestamp);

    final formatter = isToday
        ? DateFormat('HH:mm')
        : DateFormat('dd/MM/yyyy HH:mm');

    return Text(
      formatter.format(timestamp),
      style: style,
    );
  }
}
