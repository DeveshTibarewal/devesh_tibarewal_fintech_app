import 'package:hive/hive.dart';

part 'transaction.g.dart';

@HiveType(typeId: 1)
class Transaction {
  @HiveField(0)
  final String transactionId;
  @HiveField(1)
  final DateTime transactionDate;
  @HiveField(2)
  final double transactionAmount;
  @HiveField(3)
  final String transactionType; // income or expense
  @HiveField(4)
  final String transactionCategory;
  @HiveField(5)
  final String transactionNote;

  Transaction({
    required this.transactionId,
    required this.transactionDate,
    required this.transactionAmount,
    required this.transactionType,
    required this.transactionCategory,
    required this.transactionNote,
  });
}
