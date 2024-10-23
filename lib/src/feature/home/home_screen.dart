import 'package:devesh_tibarewal_fintech_app/src/utils/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'domain/provider/home_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(homeProvider.notifier).init();
  }

  @override
  Widget build(BuildContext context) {
    final homeState = ref.watch(homeProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: CustomScrollView(
        controller: ScrollController(),
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: context.getHeight(percentage: 0.45),
            leadingWidth: 72.0,
            leading: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 8.0,
              ),
              child: Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: IconButton(
                    icon: const Icon(Icons.person),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
            flexibleSpace: const FlexibleSpaceBar(
              background: Stack(
                children: [],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child:
                SizedBox(height: 20.0), // Adds vertical space between slivers
          ),
          !homeState.isLoading
              ? SliverGrid.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemCount: homeState.userSummaryData.length,
                  itemBuilder: (BuildContext context, int index) {
                    final summaryData = homeState.userSummaryData[index];
                    return Card(
                      child: Column(
                        children: <Widget>[
                          Text(
                            summaryData.title,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(summaryData.value),
                        ],
                      ),
                    );
                  },
                )
              : const SliverToBoxAdapter(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}
