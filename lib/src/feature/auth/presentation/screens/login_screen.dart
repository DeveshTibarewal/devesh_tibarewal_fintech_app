import 'package:devesh_tibarewal_fintech_app/src/common/providers/theme_provider.dart';
import 'package:devesh_tibarewal_fintech_app/src/common/screens/splash_screen.dart';
import 'package:devesh_tibarewal_fintech_app/src/feature/auth/core/data/network/auth_api_service.dart';
import 'package:devesh_tibarewal_fintech_app/src/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/widgets/common_app_bar.dart';
import '../../domain/provider/login_provider.dart';

class LoginScreen extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Access the login state from the provider
    final loginState = ref.watch(loginProvider);
    final isDarkTheme = ref.watch(themeProvider);

    return Scaffold(
      appBar: CommonAppBar(
        title: const Text('Login Screen'),
        isDarkTheme: isDarkTheme,
        onPressed: () {
          ref.read(themeProvider.notifier).toggleTheme();
          ref.read(authApiServiceProvider).getCurrencyData();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Username Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
                initialValue: loginState.username,
                onChanged: (value) {
                  ref.read(loginProvider.notifier).updateUsername(value);
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // Password Field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                initialValue: loginState.password,
                onChanged: (value) {
                  ref.read(loginProvider.notifier).updatePassword(value);
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),

              // Login Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ref.read(loginProvider.notifier).login();
                    /*showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Login Info'),
                        content: Text(loginState.errorMessage.isEmpty ? "Logging in..." : loginState.errorMessage),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              context.go(RouteNames.home.asPath);
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );*/
                  }
                },
                child: const Text('Login'),
              ),

              // No account? Register Button
              const SizedBox(
                height: 5,
              ),
              TextButton(
                onPressed: () {
                  context.push(RouteNames.register.asPath);
                },
                child: const Text('No account? Register Now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
