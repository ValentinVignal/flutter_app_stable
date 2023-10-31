import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        final param =
            int.tryParse(state.uri.queryParameters['param'] ?? '') ?? 0;
        return Home(
          param: param,
        );
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    required this.param,
    super.key,
  });

  final int param;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Param: $param'),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).go('/?param=${param + 1}');
              },
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
