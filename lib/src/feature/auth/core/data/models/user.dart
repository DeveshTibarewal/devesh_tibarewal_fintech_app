import 'package:hive/hive.dart';

import 'transaction.dart';

part 'user.g.dart';

@HiveType(typeId: 0)
class User {
  @HiveField(0)
  final String userId;
  @HiveField(1)
  final String userName;
  @HiveField(2)
  final String userEmail;
  @HiveField(3)
  final String userPassword;
  @HiveField(4)
  final List<Transaction> userTransactions;
  @HiveField(5)
  final String userCurrency;
  @HiveField(6)
  final double monthlyLimit;
  @HiveField(7)
  final double userBalance;
  @HiveField(8)
  final double userIncome;
  @HiveField(9)
  final double userExpense;

  User({
    required this.userId,
    required this.userName,
    required this.userEmail,
    required this.userPassword,
    required this.userTransactions,
    required this.userCurrency,
    required this.monthlyLimit,
    required this.userBalance,
    required this.userIncome,
    required this.userExpense,
  });

  bool checkBy({required String username, required String password}) {
    return userName == username && userPassword == password;
  }
}