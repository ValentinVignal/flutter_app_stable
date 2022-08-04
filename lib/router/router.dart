import 'package:flutter/foundation.dart';
import 'package:flutter_app_stable/filters/global/project/project_applied_filter.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/screens/screen_404.dart';
import 'package:flutter_app_stable/services/auth_service.dart';
import 'package:flutter_app_stable/widgets/filters/global/global_filters.dart';
import 'package:flutter_app_stable/widgets/root_consumer.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

final _logger = Logger('Router');

bool _isFirstRedirect = true;

final router = GoRouter(
  urlPathStrategy: UrlPathStrategy.path,
  refreshListenable: Listenable.merge([
    AuthService.isAuthenticatedValueListenable,
    // We can add other listenable here.
  ]),
  debugLogDiagnostics: true,
  redirect: (state) {
    final uri = Uri.parse(state.location);
    final globalFilters = GlobalFiltersParameters.fromJson(uri.queryParameters);
    final projectAppliedFiltersNotifier = RootConsumer.ref.read(
      projectAppliedFilterProvider.notifier,
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
