import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

bool _addQueryParams = false;

final _router = GoRouter(
  redirect: (state) {
    final uri = Uri.parse(state.location);
    if (uri.path.startsWith('/page-')) {
      if (uri.queryParameters.isEmpty && _addQueryParams) {
        return uri.path + '?p=true';
      } else if (uri.queryParameters['p'] != null && !_addQueryParams) {
        return uri.path;
      }
    }
    return null;
  },
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      redirect: (state) {
        return '/page-0';
      },
    ),
    GoRoute(
      path: '/page-0',
      builder: (context, _) => Screen(
        title: 'Page 0',
        addQueryParams: _addQueryParams,
      ),
    ),
    GoRoute(
      path: '/page-1',
      builder: (context, _) => Screen(
        title: 'Page 1',
        addQueryParams: _addQueryParams,
      ),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({
    required this.title,
    this.addQueryParams = false,
    Key? key,
  }) : super(key: key);

  final String title;

  final bool addQueryParams;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                GoRouter.of(context).go('/page-0');
              },
              child: const Text('0'),
            ),
            TextButton(
              onPressed: () {
                GoRouter.of(context).go('/page-1');
              },
              child: const Text('1'),
            ),
            Switch(
              value: addQueryParams,
              onChanged: (value) {
                _addQueryParams = value;
                GoRouter.of(context).refresh();
              },
            ),
          ],
        ),
      ),
    );
  }
}
