import 'package:devesh_tibarewal_fintech_app/src/common/hive/hive_service.dart';
import 'package:devesh_tibarewal_fintech_app/src/feature/auth/core/data/network/auth_api_service.dart';
import 'package:devesh_tibarewal_fintech_app/src/feature/auth/providers/auth_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/data/models/user.dart';

class LoginRepository {
  final Ref ref;

  LoginRepository(this.ref);

  Future<String> login(
      {required String username, required String password}) async {
    final User user =
        await HiveService.getData(HiveService.userBoxName, username);

    await ref.read(authProvider.notifier).login();

    if (user.checkBy(username: username, password: password)) {
      return 'Login Success';
    } else {
      return 'Login Failed';
    }
  }

  Future<String> register({required User user}) async {
    await HiveService.putData(HiveService.userBoxName, user.userName, user);
    return 'User Registered Successfully';
  }

  Future<List<String>?> getCurrencyList() async {
    List<String>? currencyList;
    await ref.read(authApiServiceProvider).getCurrencyData().then((value) {
      currencyList = value.keys.toList();
    });
    return currencyList;
  }
}

final authRepositoryProvider = Provider((ref) => LoginRepository(ref));
