import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stable/filters/project/project_applied_filters.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/screens/screen_404.dart';
import 'package:flutter_app_stable/services/auth_service.dart';
import 'package:flutter_app_stable/widgets/filters/global/global_filters.dart';
import 'package:flutter_app_stable/widgets/root_consumer.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

final _logger = Logger('Router');

final _observer = _GoRouterObserver();

class _GoRouterObserver extends NavigatorObserver {
  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _logger.fine('''
didPop
  - route: $route
  - previous $previousRoute
''');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _logger.fine('''
didRemove
  - route: $route
  - previous $previousRoute
''');
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _logger.fine('''
didPush
  - route: $route
  - previous $previousRoute
''');
  }
}

bool _isFirstRedirect = true;

final router = GoRouter(
  urlPathStrategy: UrlPathStrategy.path,
  refreshListenable: Listenable.merge([
    AuthService.isAuthenticatedValueListenable,
    // We can add other listenable here.
  ]),
  observers: [_observer],
  debugLogDiagnostics: true,
  redirect: (state) {
    final uri = Uri.parse(state.location);
    final globalFilters = GlobalFiltersParameters.fromJson(uri.queryParameters);
    final projectAppliedFiltersNotifier = RootConsumer.ref.read(
      projectAppliedFiltersProvider.notifier,
    );
    final filtersDoNotMatch = !setEquals(
      globalFilters.parsedProjectIds,
      projectAppliedFiltersNotifier.state,
    );

    _logger.fine('''
redirect
  location: ${state.location}
  isFirstRedirect: $_isFirstRedirect
  filtersDoNotMatch: $filtersDoNotMatch
''');
    if (_isFirstRedirect) {
      // We need to update the filters to match the url.
      if (filtersDoNotMatch) {
        projectAppliedFiltersNotifier.state = globalFilters.parsedProjectIds;
      }
      _isFirstRedirect = false;
    } else {
      if (filtersDoNotMatch) {
        // We need to redirect to the url with the filters.
        final newUri = uri.replace(
          queryParameters: GlobalFiltersParameters.fromParsedData(
            projectIds: projectAppliedFiltersNotifier.state,
          ).mergeJson(uri.queryParameters),
        );
        return newUri.toString();
      }
    }

    _logger.finest('router.redirect: ${state.location}');
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

void main() {
  router.location;
}
