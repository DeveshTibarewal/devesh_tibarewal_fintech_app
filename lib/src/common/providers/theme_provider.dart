import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier extends Notifier<bool> {
  ThemeNotifier();

  Future<void> toggleTheme() async {
    final prefs = SharedPreferencesAsync();
    state = !state;
    await prefs.setBool("isDarkTheme", state);
  }

  Future<void> getTheme() async {
    final prefs = SharedPreferencesAsync();
    state = await prefs.getBool("isDarkTheme") ?? false;
  }

  @override
  bool build() {
    return false;
  }
}

final themeProvider =
    NotifierProvider<ThemeNotifier, bool>(() => ThemeNotifier());
