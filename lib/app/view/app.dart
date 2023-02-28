import 'package:flutter/material.dart';
import 'package:rb_reader/home/home.dart';
import 'package:rb_reader/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFFB48938)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF4B8C31),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}
