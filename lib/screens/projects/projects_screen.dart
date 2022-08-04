import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/database/entities/project/project_status.dart';
import 'package:flutter_app_stable/filters/global/project/project_applied_filter.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_app_stable/screens/projects/filters/project_status_filter.dart';
import 'package:flutter_app_stable/screens/projects/projects_provider.dart';
import 'package:flutter_app_stable/widgets/filter_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        projectStatusAppliedFilterProvider,
      ],
      child: Scaffold(
        body: const ProjectList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Database.instance.projectDao.insert();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class ProjectList extends ConsumerStatefulWidget {
  const ProjectList({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProjectListState();
}

class _ProjectListState extends ConsumerState<ProjectList> {
  @override
  void initState() {
    super.initState();
    final uri = Uri.parse(router.location);
    final projectsFiltersParameters =
        ProjectsFiltersParameters.fromJson(uri.queryParameters);
    ref.read(projectStatusAppliedFilterProvider.notifier).state =
        projectsFiltersParameters.parsedStatuses;
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(projectStatusAppliedFilterProvider);
    final projectsAsyncValue = ref.watch(filteredProjectsProvider);
    final child = projectsAsyncValue.map<Widget>(
      error: (error) {
        return Center(child: ErrorWidget(error));
      },
      loading: (_) => const Center(child: CircularProgressIndicator()),
      data: (data) {
        return ListView.builder(
          itemCount: data.value.length,
          itemBuilder: (context, index) {
            final project = data.value[index];
            final theme = Theme.of(context);
            return ListTile(
              leading: DecoratedBox(
                decoration: BoxDecoration(
                  color: project.status.color(theme),
                  shape: BoxShape.circle,
                ),
                child: const SizedBox.square(dimension: 8),
              ),
              title: Text(project.name),
              subtitle: Text('${project.id} - ${project.status.name}'),
              onTap: () {
                final page = ProjectRoute(id: project.id.toString());
                router.push(page.location, extra: page);
              },
            );
          },
        );
      },
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FilterBar(
          local: [projectStatusFilterProvider],
          global: [projectFilterProvider],
          onChanged: () {
            final parameters = ProjectsFiltersParameters.fromParsedData(
                    statuses: ref.read(projectStatusAppliedFilterProvider))
                .status;
            router.replace(
              ProjectsRoute(
                status: parameters,
              ).location,
            );
          },
        ),
        Expanded(
          child: child,
        ),
      ],
    );
  }
}
