import 'package:devesh_tibarewal_fintech_app/src/feature/auth/domain/repository/auth_repository.dart';
import 'package:devesh_tibarewal_fintech_app/src/feature/auth/domain/states/register_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/data/models/user.dart';

class RegisterNotifier extends StateNotifier<RegisterState> {
  final Ref ref;

  RegisterNotifier(this.ref) : super(RegisterState());

  void updateUsername(String username) {
    state = state.copyWith(username: username);
  }

  void updateEmail(String email) {
    state = state.copyWith(email: email);
  }

  void updateCurrency(String currency) {
    state = state.copyWith(currency: currency);
  }

  void updatePassword(String password) {
    state = state.copyWith(password: password);
  }

  void updateConfirmPassword(String confirmPassword) {
    state = state.copyWith(confirmPassword: confirmPassword);
  }

  Future<String> registerUser() async {
    if (state.password != state.confirmPassword) {
      return 'Passwords do not match';
    }

    if (state.username.isEmpty ||
        state.email.isEmpty ||
        state.password.isEmpty) {
      return 'Please fill all fields';
    }

    state = state.copyWith(isLoading: true);

    try {
      User newUser = User(
        userId: DateTime.now().millisecondsSinceEpoch.toString(),
        userName: state.username,
        userEmail: state.email,
        userPassword: state.password,
        userTransactions: [],
        userCurrency: state.currency.isEmpty ? 'INR' : state.currency,
        monthlyLimit: 0.0,
        userBalance: 0.0,
        userIncome: 0.0,
        userExpense: 0.0,
      );
      ref.read(authRepositoryProvider).register(user: newUser);
      state = state.copyWith(isLoading: false);
      return 'User Registered Successfully';
    } catch (e) {
      state = state.copyWith(isLoading: false);
      return 'Error registering user';
    }
  }
}

final registerNotifierProvider =
    StateNotifierProvider<RegisterNotifier, RegisterState>(
  (ref) => RegisterNotifier(ref),
);
