import 'package:deeplink_tester/view_model/history_view_model.dart';
import 'package:deeplink_tester/wifgets/home/bottom_navigation_bar.dart';
import 'package:deeplink_tester/wifgets/home/deeplink_latest_wieget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
export 'package:deeplink_tester/core/context_extension.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
      bottomNavigationBar: AppBarBottom(),
      appBar: AppBar(title: Text('Validador de DeepLinks')),
    );
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
      child: ListView(
        children: [
          SizedBox(height: 24),
          TextField(
            controller: _textController,
            decoration: InputDecoration(
              labelText: 'Insira o link',
              border: OutlineInputBorder(),
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
            keyboardType: TextInputType.url,
            inputFormatters: [FilteringTextInputFormatter.deny(RegExp(r'\s'))],
          ),
          SizedBox(height: 24),
          ElevatedButton(
            onPressed: () async {
              final url = _textController.text.trim();
              if (url.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Por favor, insira um link')),
                );
                return;
              }
              context.read<HistoryViewModel>().testDeeplink(url);
            },
            child: Text('Validar Link'),
          ),
          SizedBox(height: 48),
          DeeplinkLatestWidget(),
        ],
      ),
    );
  }
}
