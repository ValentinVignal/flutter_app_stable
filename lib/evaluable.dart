part 'evaluable_text.dart';

abstract class Evaluable<TReturnedType> {
  Evaluable();

  /// Evaluates the [Evaluable] with the given [input].
  TReturnedType evaluate();
}

abstract class SingleEntryEvaluable<TReturnedType, TValueType>
    extends Evaluable<TReturnedType> {
  SingleEntryEvaluable({
    required this.value,
  });

  final TValueType value;
}

abstract class FieldValueEvaluable<TReturnedType>
    extends SingleEntryEvaluable<TReturnedType, String> {
  FieldValueEvaluable({
    required super.value,
  });
}
