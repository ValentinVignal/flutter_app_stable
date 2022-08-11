import 'package:build/build.dart';
import 'package:flutter_app_stable/builders/typed_routes/src/generator.dart';
import 'package:source_gen/source_gen.dart';

Builder typedRoutes(BuilderOptions options) {
  return SharedPartBuilder(
    const [TypedRouteGenerator()],
    'typed_routes',
  );
}
