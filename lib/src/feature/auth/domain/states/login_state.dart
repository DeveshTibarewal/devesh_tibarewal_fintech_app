class LoginState {
  final String username;
  final String password;
  final bool isSubmitting;
  final String errorMessage;
  final bool isError;

  LoginState({
    this.username = '',
    this.password = '',
    this.isSubmitting = false,
    this.errorMessage = '',
    this.isError = false,
  });

  // Copy with method to allow partial updates
  LoginState copyWith({
    String? username,
    String? password,
    bool? isSubmitting,
    String? errorMessage,
    bool? isError,
  }) {
    return LoginState(
      username: username ?? this.username,
      password: password ?? this.password,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      errorMessage: errorMessage ?? this.errorMessage,
      isError: isError ?? this.isError,
    );
  }
}
