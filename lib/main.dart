import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'config/theme.dart';
import 'states/theme_mode_state.dart';
import 'ui/screens/home_screen.dart';

late Box<String> prefBox;

void main() async {
  /// Initialize packages
  WidgetsFlutterBinding.ensureInitialized();

  /// Init Hive
  await Hive.initFlutter();
  prefBox = await Hive.openBox<String>('prefs');

  /// Init refresh rate
  if (Platform.isAndroid) {
    await FlutterDisplayMode.setHighRefreshRate();
  }

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeModeState currentTheme = ref.watch(themeProvider);

    return MaterialApp(
      title: 'heroicons v0.7.0',

      /// Theme stuff
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: currentTheme.themeMode,

      /// Misc
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
