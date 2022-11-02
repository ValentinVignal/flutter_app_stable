import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(
  initialLocation: '/page-0',
  routes: [
    GoRoute(
      path: '/page-0',
      builder: (_, __) => const Page0Screen(),
    ),
    GoRoute(
      path: '/page-1',
      builder: (_, __) => const Page1Screen(),
    ),
    GoRoute(
      path: '/dialog',
      pageBuilder: (context, state) => DialogPage(
        key: state.pageKey,
        child: const DialogScreen(),
      ),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

class Page0Screen extends StatelessWidget {
  const Page0Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 0')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            GoRouter.of(context)
              ..push('/page-1')
              ..push('/dialog');
          },
          child: const Text('Push'),
        ),
      ),
    );
  }
}

class Page1Screen extends StatelessWidget {
  const Page1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 1')),
      body: const Center(
        child: Text('Page 1'),
      ),
    );
  }
}

class DialogScreen extends StatelessWidget {
  const DialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      title: Text('Dialog'),
    );
  }
}

class DialogPage extends Page {
  const DialogPage({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Route createRoute(BuildContext context) {
    return DialogRoute(
      settings: this,
      context: context,
      builder: (context) {
        return child;
      },
    );
  }
}
