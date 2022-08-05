import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/database/entities/form/form_dao.dart';
import 'package:flutter_app_stable/database/entities/form/form_status.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_app_stable/screens/forms/filters/form_filter.dart';
import 'package:flutter_app_stable/screens/forms/filters/form_status_filter.dart';
import 'package:flutter_app_stable/screens/forms/forms_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({
    required this.id,
    required this.filters,
    Key? key,
  }) : super(key: key);

  final int id;

  final FormsFiltersParameters filters;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        formStatusAppliedFilterProvider,
        formAppliedFilterProvider,
      ],
      child: FormScreenContent(
        id: id,
        filters: filters,
      ),
    );
  }
}

class FormScreenContent extends ConsumerStatefulWidget {
  const FormScreenContent({
    required this.id,
    required this.filters,
    Key? key,
  }) : super(key: key);

  final int id;

  final FormsFiltersParameters filters;

  @override
  ConsumerState<FormScreenContent> createState() => _FormScreenContentState();
}

class _FormScreenContentState extends ConsumerState<FormScreenContent> {
  @override
  void initState() {
    super.initState();
    _applyProjectFilters();
  }

  @override
  void didUpdateWidget(covariant FormScreenContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.filters != widget.filters) {
      _applyProjectFilters();
    }
    if (oldWidget.id != widget.id) {
      formStream = Database.instance.formDao.watchSingle(
        widget.id,
      );
    }
  }

  void _applyProjectFilters() {
    Future.microtask(() {
      ref.read(formStatusAppliedFilterProvider.notifier).state =
          widget.filters.parsedStatuses;
      ref.read(formAppliedFilterProvider.notifier).state =
          widget.filters.parsedIds;
    });
  }

  late var formStream = Database.instance.formDao.watchSingle(
    widget.id,
  );
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
            child: StreamBuilder<FormWithProject>(
              stream: formStream,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(child: ErrorWidget(snapshot.error!));
                } else if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                final formWithProject = snapshot.data!;
                final theme = Theme.of(context);
                return Center(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: formWithProject.form.status.color(theme)),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Form - ${formWithProject.form.name}',
                            style: theme.textTheme.displaySmall,
                          ),
                          Text(
                            '${formWithProject.form.id} - ${formWithProject.form.status.name}',
                          ),
                          Text(
                            '${formWithProject.project.id} - ${formWithProject.project.name} - ${formWithProject.project.status.name}',
                          ),
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
    final forms = ref.watch(filteredFormsProvider).asData?.value ?? const [];
    final index = forms.indexWhere((form) => form.form.id == id);
    final bool enabled;
    switch (type) {
      case _PreviousNext.previous:
        enabled = index > 0;
        break;
      case _PreviousNext.next:
        enabled = index != -1 && index < forms.length - 1;
        break;
    }
    return IconButton(
      tooltip: '$_text project',
      onPressed: enabled
          ? () {
              final delta = type == _PreviousNext.previous ? -1 : 1;
              final parameters = FormsFiltersParameters.fromParsedData(
                statuses: ref.read(formStatusAppliedFilterProvider),
                ids: ref.read(formAppliedFilterProvider),
              );
              router.replace(
                FormRoute(
                  formId: forms[index + delta].form.id,
                  status: parameters.status,
                  id: parameters.id,
                ).location,
              );
            }
          : null,
      icon: Icon(_icon),
    );
  }
}
