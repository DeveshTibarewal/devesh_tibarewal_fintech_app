import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends Notifier<bool> {
  AuthProvider();

  bool get isLoggedIn => state;

  @override
  bool build() {
    Future.microtask(() async {
      final prefs = SharedPreferencesAsync();
      state = await prefs.getBool("isUserLoggedIn") ?? false;
      return await state;
    });
    return false;
  }

  Future<void> login() async {
    final prefs = SharedPreferencesAsync();
    state = true;
    await prefs.setBool("isUserLoggedIn", state);
  }

  Future<void> logout() async {
    final prefs = SharedPreferencesAsync();
    state = false;
    await prefs.setBool("isUserLoggedIn", state);
  }
}

final authProvider = NotifierProvider<AuthProvider, bool>(() => AuthProvider());
