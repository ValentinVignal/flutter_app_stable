part of 'evaluable.dart';

/// {@template nl.evaluable.text_field_value}
/// A evaluable that evaluates to the text of a field in the [EvaluableInput].
/// {@endtemplate}
class TextFieldValueEvaluable extends FieldValueEvaluable<String> {
  /// {@macro nl.evaluable.text_field_value}
  TextFieldValueEvaluable({
    required super.value,
  }) : super();

  @override
  String evaluate() {
    return '';
  }
}
