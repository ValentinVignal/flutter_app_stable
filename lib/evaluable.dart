abstract class Evaluable<TReturnedType> {
  Evaluable();
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

/// {@template nl.evaluable.text_field_value}
/// A evaluable that evaluates to the text of a field in the [EvaluableInput].
/// {@endtemplate}
class TextFieldValueEvaluable extends FieldValueEvaluable<String> {
  /// {@macro nl.evaluable.text_field_value}
  TextFieldValueEvaluable({
    required super.value,
  }) : super();
}
