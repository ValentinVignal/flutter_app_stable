import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/database/entities/project/project_status.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_app_stable/screens/projects/filters/project_status_filter.dart';
import 'package:flutter_app_stable/screens/projects/projects_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({
    required this.id,
    required this.projectsFilters,
    Key? key,
  }) : super(key: key);

  final int id;

  final ProjectsFiltersParameters projectsFilters;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        projectStatusAppliedFilterProvider
            .overrideWithValue(projectsFilters.parsedStatuses),
      ],
      child: _ProjectScreenContent(
        id: id,
      ),
    );
  }
}

class _ProjectScreenContent extends StatefulWidget {
  const _ProjectScreenContent({
    required this.id,
    Key? key,
  }) : super(key: key);

  final int id;

  @override
  State<_ProjectScreenContent> createState() => __ProjectScreenContentState();
}

class __ProjectScreenContentState extends State<_ProjectScreenContent> {
  late var projectStream = Database.instance.projectDao.watchSingle(widget.id);

  @override
  void didUpdateWidget(covariant _ProjectScreenContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    projectStream = Database.instance.projectDao.watchSingle(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          _PreviousNextButton(
            id: widget.id,
            type: _PreviousNext.previous,
          ),
          Expanded(
            child: StreamBuilder<ProjectData>(
              stream: projectStream,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(child: ErrorWidget(snapshot.error!));
                } else if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                final project = snapshot.data!;
                final theme = Theme.of(context);
                return Center(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: project.status.color(theme)),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Project - ${project.name}',
                            style: theme.textTheme.displaySmall,
                          ),
                          Text('${project.id} - ${project.status.name}'),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          _PreviousNextButton(
            id: widget.id,
            type: _PreviousNext.next,
          ),
        ],
      ),
    );
  }
}

enum _PreviousNext {
  previous,
  next,
}

class _PreviousNextButton extends ConsumerWidget {
  const _PreviousNextButton({
    required this.id,
    required this.type,
    Key? key,
  }) : super(key: key);

  final int id;
  final _PreviousNext type;

  String get _text {
    switch (type) {
      case _PreviousNext.previous:
        return 'Previous';
      case _PreviousNext.next:
        return 'Next';
    }
  }

  IconData get _icon {
    switch (type) {
      case _PreviousNext.previous:
        return Icons.arrow_back;
      case _PreviousNext.next:
        return Icons.arrow_forward;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projects =
        ref.watch(filteredProjectsProvider).asData?.value ?? const [];
    final index = projects.indexWhere((project) => project.id == id);
    final bool enabled;
    switch (type) {
      case _PreviousNext.previous:
        enabled = index > 0;
        break;
      case _PreviousNext.next:
        enabled = index != -1 && index < projects.length - 1;
        break;
    }
    return IconButton(
      tooltip: '$_text project',
      onPressed: enabled
          ? () {
              final delta = type == _PreviousNext.previous ? -1 : 1;
              final parameters = ProjectsFiltersParameters.fromParsedData(
                  statuses: ref.read(projectStatusAppliedFilterProvider));
              router.pushReplacement(
                ProjectRoute(
                  projectId: projects[index + delta].id,
                  status: parameters.status,
                ).location,
              );
            }
          : null,
      icon: Icon(_icon),
    );
  }
}
