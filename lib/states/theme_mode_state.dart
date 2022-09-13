import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../main.dart';

final AutoDisposeChangeNotifierProvider<ThemeModeState> themeProvider =
    ChangeNotifierProvider.autoDispose(
        (AutoDisposeChangeNotifierProviderRef<ThemeModeState> ref) {
  return ThemeModeState();
});

class ThemeModeState extends ChangeNotifier {
  ThemeModeState() {
    final String? mode =
        prefBox.get('themeMode', defaultValue: ThemeMode.light.toString());
    switch (mode) {
      case 'ThemeMode.dark':
        themeMode = ThemeMode.dark;
        break;
      case 'ThemeMode.light':
        themeMode = ThemeMode.light;
        break;
      case 'ThemeMode.system':
        themeMode = ThemeMode.system;
        break;
    }
  }

  ThemeMode? themeMode;

  void setThemeMode(ThemeMode mode) {
    themeMode = mode;
    prefBox.put('themeMode', themeMode.toString());
    notifyListeners();
  }
}
