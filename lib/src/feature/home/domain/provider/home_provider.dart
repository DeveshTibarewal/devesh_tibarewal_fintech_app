import 'package:devesh_tibarewal_fintech_app/src/feature/home/domain/repository/home_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../states/home_state.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  final Ref ref;

  HomeNotifier(this.ref) : super(HomeState());

  Future<void> init() async {
    state = state.copyWith(isLoading: true);
    final list = await ref.read(homeRepositoryProvider).getHomeData();
    state = state.copyWith(isLoading: false, userSummaryData: list);
  }
}

final homeProvider =
    StateNotifierProvider<HomeNotifier, HomeState>((ref) => HomeNotifier(ref));
