import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_app_stable/screens/forms/filters/form_filter.dart';
import 'package:flutter_app_stable/screens/forms/filters/form_status_filter.dart';
import 'package:flutter_app_stable/screens/forms/form_content.dart';
import 'package:flutter_app_stable/screens/forms/forms_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({
    required this.id,
    required this.filters,
    super.key,
  });

  final int id;

  final FormsFiltersParameters filters;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        formStatusAppliedFilterProvider.overrideWithValue(
          filters.parsedStatuses,
        ),
        formAppliedFilterProvider.overrideWithValue(
          filters.parsedIds,
        ),
      ],
      child: FormScreenContent(
        id: id,
        filters: filters,
      ),
    );
  }
}

class FormScreenContent extends StatelessWidget {
  const FormScreenContent({
    required this.id,
    required this.filters,
    Key? key,
  }) : super(key: key);

  final int id;

  final FormsFiltersParameters filters;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          _PreviousNextButton(
            id: id,
            type: _PreviousNext.previous,
          ),
          Expanded(
            child: Center(
              child: FormContent(
                id: id,
                filters: filters,
              ),
            ),
          ),
          _PreviousNextButton(
            id: id,
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
      tooltip: '$_text form',
      onPressed: enabled
          ? () {
              final delta = type == _PreviousNext.previous ? -1 : 1;
              final parameters = FormsFiltersParameters.fromParsedData(
                statuses: ref.read(formStatusAppliedFilterProvider),
                ids: ref.read(formAppliedFilterProvider),
              );
              router.pushReplacement(
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
