part of 'evaluable.dart';

/// {@template nl.evaluable.text_field_value}
/// A evaluable that evaluates to the text of a field in the [EvaluableInput].
/// {@endtemplate}
@JsonSerializable()
class TextFieldValueEvaluable extends FieldValueEvaluable<String> {
  /// {@macro nl.evaluable.text_field_value}
  TextFieldValueEvaluable({
    required super.value,
  }) : super();

  /// {@macro nl.evaluable.text_field_value}
  factory TextFieldValueEvaluable.fromJson(Map<String, dynamic> json) {
    return _$TextFieldValueEvaluableFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TextFieldValueEvaluableToJson(this);
  }

  @override
  String evaluate() {
    return '';
  }
}
