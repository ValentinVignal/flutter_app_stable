import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Those 2 values are usually loaded from the url, they are not mutable in the
// real app.
//
// They are the "applied filters" of the list. For example in a user list, `0`
// could be the user id and `1` could be the user status:
// ```
// /users?user-id=0&user-id=1&user-status=2
// ```
var applied0 = const {0, 1};
var applied1 = const {'2'};

// We provide the applied filters on the user ids to the app. It is a provider
// since it cannot be changed. This comes from the url.
//
// `a` is for "applied" (= the filters that are actually applied).
final aProvider0 = Provider.autoDispose<Set<int>>((ref) {
  return applied0.toSet();
});
//
// We also provide the options for the filter. In this case (the user id), it
// contains all the users of the app.
//
// `o` is for "options" (= the options for the filter).
final oProvider0 = Provider.autoDispose<Iterable<int>>((ref) {
  return List.generate(10, (index) => index);
});

// We do the same with the user status.
final aProvider1 = Provider.autoDispose<Set<String>>((ref) {
  return applied1.toSet();
});
final oProvider1 = Provider.autoDispose<Iterable<String>>((ref) {
  return List.generate(10, (index) => index.toString());
});

// A some point, we end up manipulating a list of filters which are not of the
// same type.
final List<Filter<dynamic>> filters = [
  Filter<int>(
    aProvider: aProvider0,
    oProvider: oProvider0,
  ),
  Filter<String>(
    aProvider: aProvider1,
    oProvider: oProvider1,
  ),
];

/// This combines the "applied filter provider" (ex for the user ids: the actual
/// user ids the list is filter by), and the "options filter provider" (ex for
/// the user ids: all the users in the app).
class Filter<T> {
  const Filter({
    required this.aProvider,
    required this.oProvider,
  });

  final ProviderBase<Set<T>> aProvider;
  final ProviderBase<Iterable<T>> oProvider;

  /// Creates
  /// - A state provider that is initialized with the current applied filters.
  ///   The user will modify this provider in the "preview".
  /// - A provider that returns the state of the state provider. This will
  ///   override the "applied filter providers" (`aProviderX`) in the preview so
  ///   it displays what the user modified.
  FilterStateProviderAndOverride<T> _createStateProvider() {
    final stateProvider = StateProvider.autoDispose<Set<T>>((ref) {
      return ref.read(aProvider);
    });
    final override = Provider.autoDispose<Set<T>>((ref) {
      return ref.watch(stateProvider);
    });
    return FilterStateProviderAndOverride(
      stateProvider: stateProvider,
      override: override,
    );
  }
}

/// Only store the created state providers and the overrides.
class FilterStateProviderAndOverride<T> {
  FilterStateProviderAndOverride({
    required this.stateProvider,
    required this.override,
  });
  final AutoDisposeStateProvider<Set<T>> stateProvider;
  final AutoDisposeProvider<Set<T>> override;
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        theme: ThemeData.dark(useMaterial3: true),
        home: const Home(),
      ),
    );
  }
}

/// Contains
/// - The actual applied filters (from the url) (most of the app).
/// - The preview (the user modified filters before application).
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // The app using the correct provider. 95% of the app are in this use
        // case.
        Expanded(
          child: Scaffold(
            body: AppliedData(
              filters: MutableFilters(
                filters: filters,
              ),
            ),
          ),
        ),
        // The preview using the overridden providers.
        Expanded(
          child: ModifiedData(
            filters: filters,
          ),
        ),
      ],
    );
  }
}

class MutableFilters {
  const MutableFilters({
    required this.filters,
    this.states = const [],
    this.onChanged,
  })  : assert(filters.length > 0),
        assert(states.length == 0 || states.length == filters.length);

  final List<Filter> filters;
  final List<AutoDisposeStateProvider<Set>> states;
  final void Function(WidgetRef)? onChanged;
}

/// Displays the currently applied filters in the current provider scope.
class AppliedData extends ConsumerWidget {
  const AppliedData({
    required this.filters,
    Key? key,
  }) : super(key: key);

  final MutableFilters filters;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final length = filters.filters.fold<int>(
        0,
        (previousValue, filter) =>
            previousValue + ref.watch(filter.oProvider).length);
    final children = filters.filters.asMap().entries.expand((filterEntry) {
      final set = ref.watch(filterEntry.value.aProvider);
      return ref.watch(filterEntry.value.oProvider).map((option) {
        return CheckboxListTile(
          value: set.contains(option),
          onChanged: filters.states.isNotEmpty
              // If the state providers are created, we use them to modify the
              // overridden providers.
              ? (value) {
                  final notifier = ref.read(
                    filters.states[filterEntry.key].notifier,
                  );
                  final state = ref.read(filters.states[filterEntry.key]);
                  final newState = state.update(option);
                  notifier.state = newState;
                }
              : null,
          title: Text(option.toString()),
        );
      });
    });
    return ListView.builder(
      itemCount: length,
      itemBuilder: (context, index) {
        return children.elementAt(index);
      },
    );
  }
}

extension _SetX<T> on Set<T> {
  Set<T> update(e) {
    if (contains(e)) {
      return toSet()..remove(e);
    } else {
      return toSet()..add(e);
    }
  }
}

/// This sets up the provider overrides and display the preview the user can
/// modify and interact with.
class ModifiedData extends ConsumerStatefulWidget {
  const ModifiedData({
    required this.filters,
    Key? key,
  }) : super(key: key);

  final List<Filter> filters;

  @override
  ConsumerState<ModifiedData> createState() => _ModifiedDataState();
}

class _ModifiedDataState extends ConsumerState<ModifiedData> {
  late final List<FilterStateProviderAndOverride> _states;

  @override
  void initState() {
    super.initState();
    // We create a state provider and an override for each given filters.
    _states = widget.filters
        .map(
          (filter) => filter._createStateProvider(),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      // We pass the overrides so the nested widget trees uses with whatever the
      // user modified.
      overrides: widget.filters.asMap().entries.map(
        (entry) {
          return entry.value.aProvider
              .overrideWithProvider(_states[entry.key].override);
        },
      ).toList(),
      child: ModifiedDataContent(
        filters: MutableFilters(
          filters: widget.filters,
          states: _states.map((state) => state.stateProvider).toList(),
          onChanged: (nestedRef) {
            // When the user wants to save, we
            final new0 = nestedRef.read(aProvider0);
            final new1 = nestedRef.read(aProvider1);
            applied0 = new0;
            applied1 = new1;
            // Here we refresh to simulate a push, in reality, the user with be
            // redirected to the correct url with the correct filter applied.
            // ```
            // /users?user-id=0&status=1&status=2
            // ```
            ref.refresh(aProvider0);
            ref.refresh(aProvider1);
          },
        ),
      ),
    );
  }
}

class ModifiedDataContent extends ConsumerWidget {
  const ModifiedDataContent({
    required this.filters,
    Key? key,
  }) : super(key: key);

  final MutableFilters filters;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      child: Scaffold(
        body: AppliedData(
          filters: filters,
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.done),
          onPressed: () {
            // We pass the nested `ref` to the callback to give access to the
            // overridden values.
            filters.onChanged!(ref);
          },
        ),
      ),
    );
  }
}
