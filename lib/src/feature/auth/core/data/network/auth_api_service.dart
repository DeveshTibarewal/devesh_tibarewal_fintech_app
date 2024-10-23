import 'package:devesh_tibarewal_fintech_app/src/networking/dio_client.dart';
import 'package:devesh_tibarewal_fintech_app/src/utils/constants/app_constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthApiService {
  final Ref ref;

  AuthApiService(this.ref);

  Future<Map<String, double>> getCurrencyData() async {
    final response = await ref
        .read(dioProvider)
        .get("v1/latest", queryParameters: {"apikey": API_KEY});
    final data = response.data['data'].map<String, double>((key, value) {
      return MapEntry(key, value.toDouble());
    });
    return data;
  }
}

final authApiServiceProvider = Provider((ref) => AuthApiService(ref));
