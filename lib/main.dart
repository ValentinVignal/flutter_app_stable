import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Home(),
    )
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: GoRouter.of(context).canPop()
                  ? () {
                      GoRouter.of(context).pop();
                    }
                  : null,
              icon: const Icon(Icons.arrow_back),
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push('/');
              },
              child: const Text('Push'),
            ),
          ],
        ),
      ),
    );
  }
}
