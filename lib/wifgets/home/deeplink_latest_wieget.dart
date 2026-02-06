import 'package:deeplink_tester/core/context_extension.dart';
import 'package:deeplink_tester/view_model/history_view_model.dart';
import 'package:deeplink_tester/wifgets/home/timestamp_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class DeeplinkLatestWidget extends StatelessWidget {
  const DeeplinkLatestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HistoryViewModel>(
      builder: (buildContext, vm, child) {
        final history = vm.latest;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                'Ultimos testes:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ...history
                .map(
                  (deeplinkHistory) => GestureDetector(
                    onTap: () => _launchUrl(context, deeplinkHistory.url),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 24,
                        horizontal: 24,
                      ),
                      decoration: BoxDecoration(
                        color: context.isDark ? Colors.black : Colors.grey[300],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          deeplinkHistory.isFailed
                              ? Icon(Icons.close, size: 24, color: Colors.red)
                              : Icon(
                                  Icons.check,
                                  size: 24,
                                  color: Colors.green,
                                ),
                          Text(
                            deeplinkHistory.url,
                            style: TextStyle(fontSize: 16),
                          ),
                          TimestampText(
                            timestamp: deeplinkHistory.timestamp,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
          ],
        );
      },
    );
  }

  Future<void> _launchUrl(BuildContext context, String url) async {
    final original = url;
    if (!url.contains('://')) {
      url = 'https://$url';
    }

    final Uri uri = Uri.parse(url);
    try {
      final launched = await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
      if (!launched) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('No Activity found to handle intent { $original }'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('No Activity found to handle intent { $original }'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
