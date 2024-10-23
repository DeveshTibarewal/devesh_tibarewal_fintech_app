import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repository/auth_repository.dart';
import '../states/login_state.dart';

class LoginNotifier extends Notifier<LoginState> {
  LoginNotifier();

  @override
  LoginState build() {
    return LoginState();
  }

  // Update username
  void updateUsername(String username) {
    state = state.copyWith(username: username);
  }

  // Update password
  void updatePassword(String password) {
    state = state.copyWith(password: password);
  }

  // Handle login logic (you can integrate API calls here)
  Future<void> login() async {
    state = state.copyWith(
      isSubmitting: true,
      isError: false,
      errorMessage: '',
    );
    if (state.username.isEmpty || state.password.isEmpty) {
      state = state.copyWith(
        errorMessage: 'Please enter both username and password',
        isError: true,
        isSubmitting: false,
      );
    }
    final message = await ref.read(authRepositoryProvider).login(
          username: state.username,
          password: state.password,
        );
    state = state.copyWith(
      isSubmitting: false,
      isError: message == 'Login Failed',
      errorMessage:
          message == 'Login Failed' ? 'Invalid credentials' : 'Success',
    );
  }
}

final loginProvider = NotifierProvider<LoginNotifier, LoginState>(
  () => LoginNotifier(),
);
