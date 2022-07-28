import 'package:flutter/material.dart';
import 'package:flutter_app_stable/filters/project/project_applied_filters.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/services/cache.dart';
import 'package:flutter_app_stable/widgets/address_bar.dart';
import 'package:flutter_app_stable/widgets/filter_bar.dart';
import 'package:flutter_app_stable/widgets/go_router_back_button.dart';
import 'package:flutter_app_stable/widgets/notification_bell.dart';
import 'package:flutter_app_stable/widgets/seed_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Even if we were to make is a stateful widget to reuse the state when we us
// GoRouter's `go` method, it won't work for `push` as the previous top bar
// won't be deactivated but kept in the widget tree.
class TopBar extends ConsumerWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const AddressBar(),
        AppBar(
          leading: const GoRouterBackButton(),
          title: const Text('Top bar'),
          actions: [
            const SeedButton(),
            const NotificationBell(),
            IconButton(
              onPressed: () {
                Cache.box.clear();
                // The redirection should be handled automatically with the refresh.
              },
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        FilterBar(
          filters: [
            projectFilterProvider,
          ],
          onChanged: () {
            final projectAppliedFilters = ref.read(projectFilterProvider);

            final parameters = ProjectsRouteParameters.fromParsedData(
                projectIds: projectAppliedFilters.selected);
            ProjectsRoute(
              projectId: parameters.projectId,
            ).go(context);
          },
        ),
      ],
    );
  }
}
