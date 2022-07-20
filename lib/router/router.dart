import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/screens/screen_404.dart';
import 'package:flutter_app_stable/services/auth_service.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

final _logger = Logger('Router');

final router = GoRouter(
  urlPathStrategy: UrlPathStrategy.path,
  refreshListenable: Listenable.merge([
    AuthService.isAuthenticatedValueListenable,
    // We can add other listenable here.
  ]),
  debugLogDiagnostics: true,
  redirect: (state) {
    _logger.fine('router.redirect: ${state.location}');
    final uri = Uri.parse(state.location);
    final rootSegment =
        uri.pathSegments.isNotEmpty ? uri.pathSegments.first : '/';
    // TODO: Find a better way to know what page is pushed
    if (authenticatedRootSegments.contains(rootSegment) &&
        !AuthService.isAuthenticatedValueListenable.value) {
      return '/login';
    } else if (unauthenticatedRootSegments.contains(rootSegment) &&
        AuthService.isAuthenticatedValueListenable.value) {
      return '/projects';
    }
    return null;
  },
  routes: $appRoutes,
  errorBuilder: (context, state) => const Screen404(),
);
