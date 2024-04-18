import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

/// If `true`, use `GoRouter.replace`, if `false`, use
/// `GoRouter.pushReplacement`.
final useReplaceProvider = StateProvider.autoDispose<bool>((ref) {
  return true;
});

final intUrlParameterProvider = Provider.autoDispose<int?>((ref) {
  return null;
});

/// `templateProvider`
final intDatabaseProvider = StreamProvider.autoDispose.family<int, int>(
  (ref, id) async* {
    await Future.delayed(const Duration(seconds: 1));
    yield 42;
  },
);

/// `templateEffectiveVersionNumberProvider`
final sumUrlParameterAndDatabaseProvider =
    Provider.autoDispose.family<int, int>(
  (ref, id) {
    final url = ref.watch(intUrlParameterProvider);
    final database = ref.watch(intDatabaseProvider(id)).valueOrNull ?? 0;
    return (url ?? 0) + database;
  },
  dependencies: [intUrlParameterProvider, intDatabaseProvider],
);

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        final count = int.tryParse(state.uri.queryParameters['count'] ?? '');
        final id = int.tryParse(state.uri.queryParameters['id'] ?? '') ?? 0;
        return ProviderScope(
          overrides: [
            intUrlParameterProvider.overrideWithValue(count),
          ],
          child: Home(
            id: id,
          ),
        );
      },
    ),
  ],
);

void redirect(BuildContext context, WidgetRef ref) {
  final location = '/?count=${(ref.read(intUrlParameterProvider) ?? 0) + 1}';
  final useReplace = ref.read(useReplaceProvider);
  if (useReplace) {
    GoRouter.of(context).replace(location);
  } else {
    GoRouter.of(context).pushReplacement(location);
  }
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

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(GoRouterState.of(context).uri.toString());
  }
}

class Home extends ConsumerWidget {
  const Home({
    super.key,
    required this.id,
  });

  final int id;

  @override
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(),
        actions: [
          Switch(
            value: ref.watch(useReplaceProvider),
            onChanged: (value) {
              ref.read(useReplaceProvider.notifier).state = value;
            },
          ),
        ],
      ),
      body: Content(id: id),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          redirect(context, ref);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Content1(id: id),
        ),
        Expanded(
          child: Content2(id: id),
        ),
      ],
    );
  }
}

class Content1 extends ConsumerWidget {
  const Content1({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sum = ref.watch(sumUrlParameterAndDatabaseProvider(id));
    return Center(
      child: Text(
        'Content1: $sum',
      ),
    );
  }
}

class Content2 extends ConsumerWidget {
  const Content2({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sum = ref.watch(sumUrlParameterAndDatabaseProvider(id));
    return Center(
      child: Text(
        'Content2: $sum',
      ),
    );
  }
}
