import 'package:devesh_tibarewal_fintech_app/src/common/hive/hive_service.dart';
import 'package:devesh_tibarewal_fintech_app/src/feature/auth/core/data/models/user.dart';
import 'package:devesh_tibarewal_fintech_app/src/feature/home/domain/models/summary_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

class HomeRepository {
  final Ref ref;

  HomeRepository(this.ref);

  Future<List<SummaryData>> getHomeData() async {
    final userList = await HiveService.getAllData(HiveService.userBoxName);
    final User user = userList.first;
    return [
      SummaryData(title: "Currency", value: user.userCurrency),
      SummaryData(title: "Balance", value: user.userBalance.toString()),
      SummaryData(title: "Expense", value: user.userExpense.toString()),
      SummaryData(title: "Income", value: user.userIncome.toString()),
    ];
  }
}

final homeRepositoryProvider =
    Provider<HomeRepository>((ref) => HomeRepository(ref));
