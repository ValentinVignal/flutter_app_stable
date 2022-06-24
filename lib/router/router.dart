import 'package:flutter/material.dart';
import 'package:flutter_app_stable/screens/login.dart';
import 'package:flutter_app_stable/screens/projects.dart';
import 'package:flutter_app_stable/screens/screen_404.dart';
import 'package:flutter_app_stable/screens/sign_up.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  urlPathStrategy: UrlPathStrategy.path,
  routes: [
    GoRoute(
      path: '/',
      name: WebPage.home.pageName,
      redirect: (state) {
        // TODO: If logged in, go to projects
        return '/login';
      },
    ),
    GoRoute(
      path: '/login',
      name: WebPage.login.pageName,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/sign-up',
      name: WebPage.signUp.pageName,
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: '/projects',
      name: WebPage.projects.pageName,
      builder: (context, state) => const ProjectsScreen(),
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: const Screen404(),
  ),
);

enum WebPage {
  home,
  login,
  signUp,
  projects,
}

extension WebPageX on WebPage {
  // https://github.com/flutter/flutter/issues/106163
  String get pageName => name.toLowerCase();
}
