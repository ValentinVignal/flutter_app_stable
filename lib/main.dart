abstract class FirstClass<T> {
  FirstClass({
    required this.value,
  });

  final String value;
}

abstract class SecondClass<T> extends FirstClass {
  SecondClass({
    required super.value,
  });
}

/// {@template third_class}
/// [UnknownClass].
/// {@endtemplate}
class ThirdClass extends SecondClass {
  /// {@macro third_class}
  ThirdClass({
    required super.value,
  });
}
