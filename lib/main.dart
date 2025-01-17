import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

part 'main.g.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  const HomeRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

@TypedGoRoute<ILPRoute>(path: '/ilp')
class ILPRoute extends GoRouteData {
  const ILPRoute({
    this.type,
  });

  final int? type;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProviderScope(
      overrides: [
        filterProvider.overrideWith((ref) => type),
      ],
      // ignore: prefer_const_constructors
      child: ILPPage(),
    );
  }
}

class SetWrapper<T> with EquatableMixin {
  const SetWrapper([this.value = const {}]);

  final Set<T> value;

  @override
  List<Object?> get props => [value];
}

final router = GoRouter(
  routes: $appRoutes,
);

void main() {
  GoRouter.optionURLReflectsImperativeAPIs = true;
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              const ILPRoute().go(context);
            },
            child: const Text('ILP'),
          ),
          ElevatedButton(
            onPressed: () {
              const ILPRoute(type: 2).go(context);
            },
            child: const Text('ILP filtered'),
          ),
        ],
      ),
    );
  }
}

class Transaction {
  const Transaction({
    required this.id,
    required this.type,
  });

  final String id;
  final int type;
}

final transactionsProvider = FutureProvider.autoDispose((ref) async {
  await Future.delayed(const Duration(seconds: 1));

  return const [
    Transaction(id: '1', type: 1),
    Transaction(id: '2', type: 2),
    Transaction(id: '3', type: 3),
    Transaction(id: '4', type: 4),
  ];
});

final filterProvider = StateProvider.autoDispose<int?>((ref) {
  throw UnimplementedError('This should be overridden');
});

final filteredTransactionProvider =
    Provider.autoDispose<AsyncValue<List<Transaction>>>(
  (ref) {
    final transactions = ref.watch(transactionsProvider);
    final filters = ref.watch(filterProvider);

    if (filters == null) return transactions;
    return transactions.whenData((transactions) {
      return transactions
          .where((transaction) => filters == transaction.type)
          .toList();
    });
  },
  dependencies: [transactionsProvider, filterProvider],
);

class ILPPage extends ConsumerWidget {
  const ILPPage({super.key, int? type});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactions = ref.watch(filteredTransactionProvider);
    final filters = ref.watch(filterProvider);
    return Scaffold(
      body: Column(
        children: [
          ToggleButtons(
            isSelected: [1, 2, 3, 4].map((t) => filters == t).toList(),
            children: [1, 2, 3, 4].map((t) => Text(t.toString())).toList(),
            onPressed: (index) {
              if (filters == index + 1) {
                ref.read(filterProvider.notifier).state = null;
                return;
              }
              ref.read(filterProvider.notifier).state = index + 1;
            },
          ),
          Expanded(
            child: ListView(
              children: [
                for (final transaction in transactions.valueOrNull ?? const [])
                  ListTile(
                    title: Text(transaction.id),
                    subtitle: Text(transaction.type.toString()),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
