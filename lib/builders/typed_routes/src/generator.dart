import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:source_gen/source_gen.dart';

class TypedRouteGenerator extends GeneratorForAnnotation<void> {
  const TypedRouteGenerator();

  @override
  TypeChecker get typeChecker => const TypeChecker.fromUrl(
        'package:go_router/src/route_data.dart#TypedGoRoute',
      );

  @override
  FutureOr<String> generate(LibraryReader library, BuildStep buildStep) async {
    return super.generate(library, buildStep);
  }

  @override
  dynamic generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    print('here');
    return ' // test for element ${element.name}';
  }
}

const TypeChecker _goRouteDataChecker = TypeChecker.fromUrl(
  'package:go_router/src/route_data.dart#GoRouteData',
);
