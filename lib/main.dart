import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter goRouter = GoRouter(
  routes: [
    ShellRoute(
      builder: (context, state, child) => Scaffold(
        body: Container(
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: child,
          ),
        ),
      ),
      routes: [
        GoRoute(
          path: "/",
          redirect: (context, state) => "/a",
        ),
        ShellRoute(
          builder: (context, state, child) => Container(
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: child,
            ),
          ),
          routes: [
            GoRoute(
              path: "/a",
              builder: (context, state) => const A(),
              routes: [
                ShellRoute(
                  builder: (context, state, child) => Container(
                    color: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: child,
                    ),
                  ),
                  routes: [
                    GoRoute(
                      path: "b",
                      builder: (context, state) => const B(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);

class A extends StatelessWidget {
  const A({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black45,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("This is /a. push to /a/b"),
              onPressed: () => GoRouter.of(context).push("/a/b"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text("This is /a. go to /a/b"),
              onPressed: () => GoRouter.of(context).go("/a/b"),
            ),
          ],
        ),
      ),
    );
  }
}

class B extends StatelessWidget {
  const B({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black45,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("This is /a/b. push to /a"),
              onPressed: () => GoRouter.of(context).push("/a"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text("This is /a/b. go to /a"),
              onPressed: () => GoRouter.of(context).go("/a"),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: goRouter.routeInformationProvider,
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
    );
  }
}
