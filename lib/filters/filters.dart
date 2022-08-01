import 'package:flutter_app_stable/filters/filter.dart';

/// Contains the global and local filters of a screen.
abstract class Filters {
  const Filters();

  /// The local filters are not shared between pages.
  Iterable<Filter> get local;

  /// The global filters are shared between  pages.
  Iterable<Filter> get global;
}
