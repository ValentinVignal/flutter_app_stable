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
  factory TextFieldValueEvaluable.fromJson(Json json) {
    return _$TextFieldValueEvaluableFromJson(json);
  }

  @override
  Json _toJson() {
    return _$TextFieldValueEvaluableToJson(this);
  }

  @override
  String evaluate(EvaluableInput input) {
    return input.getText(value);
  }

  @override
  TextFieldValueEvaluable copyWith({String? value}) {
    return TextFieldValueEvaluable(value: value ?? this.value);
  }
}
