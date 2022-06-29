import 'package:flutter_app_stable/router/page_name.dart';
import 'package:flutter_app_stable/screens/login.dart';
import 'package:flutter_app_stable/screens/projects/project.dart';
import 'package:flutter_app_stable/screens/projects/projects.dart';
import 'package:flutter_app_stable/screens/screen_404.dart';
import 'package:flutter_app_stable/screens/sign_up.dart';
import 'package:go_router/go_router.dart';

class MyGoRouter extends GoRouter {
  MyGoRouter()
      : super(
          urlPathStrategy: UrlPathStrategy.path,
          routes: [],
        );
}

final router = GoRouter(
  urlPathStrategy: UrlPathStrategy.path,
  // TODO: Add a a listenable and give it to the parameter `refreshListenable`
  // to automatically log-in/out when the use logs in/out.
  redirect: (state) {
    // TODO: Add guards to check whether or not the user is logged in.
    // TODO: Add sub guards.
    return null;
  },
  routes: [
    GoRoute(
      path: WebPageName.home.path,
      name: WebPageName.home.pageName,
      redirect: (state) {
        // TODO: If logged in, go to projects
        // TODO: Looks how to know manipulate URI. (look at named location).
        return '/login';
      },
    ),
    GoRoute(
      path: WebPageName.login.path,
      name: WebPageName.login.pageName,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: WebPageName.signUp.path,
      name: WebPageName.signUp.pageName,
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: WebPageName.projects.path,
      name: WebPageName.projects.pageName,
      builder: (context, state) => const ProjectsScreen(),
      routes: [
        GoRoute(
          path: WebPageName.project.path,
          name: WebPageName.project.pageName,
          builder: (context, state) {
            final projectId = state.params['id']!;
            return ProjectScreen(id: projectId);
          },
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => const Screen404(),
);
