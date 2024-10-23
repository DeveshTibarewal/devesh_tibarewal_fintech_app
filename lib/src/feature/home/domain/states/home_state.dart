import '../../../auth/core/data/models/transaction.dart';
import '../models/summary_data.dart';

class HomeState {
  final bool isLoading;
  final List<SummaryData> userSummaryData;
  final List<Transaction> transactionList;

  HomeState({
    this.isLoading = false,
    this.userSummaryData = const [],
    this.transactionList = const [],
  });

  HomeState copyWith({
    bool? isLoading,
    List<SummaryData>? userSummaryData,
    List<Transaction>? transactionList,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      userSummaryData: userSummaryData ?? this.userSummaryData,
      transactionList: transactionList ?? this.transactionList,
    );
  }
}
