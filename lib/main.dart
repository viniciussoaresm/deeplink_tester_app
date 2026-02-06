import 'package:deeplink_tester/core/routes/route.dart';
import 'package:deeplink_tester/core/theme/dark_theme.dart';
import 'package:deeplink_tester/view_model/history_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => HistoryViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'DeepLink Tester',
      theme: buildDarkTheme(),
      routerConfig: Routes().get,
    );
  }
}
