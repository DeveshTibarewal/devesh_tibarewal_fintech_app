class RegisterState {
  final String username;
  final String email;
  final String password;
  final String confirmPassword;
  final String currency;
  final bool isLoading;

  RegisterState({
    this.username = '',
    this.email = '',
    this.password = '',
    this.confirmPassword = '',
    this.currency = '',
    this.isLoading = false,
  });

  RegisterState copyWith({
    String? username,
    String? email,
    String? password,
    String? confirmPassword,
    String? currency,
    bool? isLoading,
  }) {
    return RegisterState(
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      currency: currency ?? this.currency,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
