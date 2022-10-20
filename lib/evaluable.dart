import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'evaluable.g.dart';
part 'evaluable_text.dart';

abstract class Evaluable<TReturnedType> {
  Evaluable();

  factory Evaluable.fromJson(Map<String, dynamic> json) {
    return FieldValueEvaluable<TReturnedType>.fromJson(json);
  }

  Map<String, dynamic> toJson();

  /// Evaluates the [Evaluable] with the given [input].
  TReturnedType evaluate();
}

abstract class SingleEntryEvaluable<TReturnedType, TValueType>
    extends Evaluable<TReturnedType> with EquatableMixin {
  SingleEntryEvaluable({
    required this.value,
  });

  final TValueType value;

  @override
  List<Object?> get props => [value];
}

abstract class FieldValueEvaluable<TReturnedType>
    extends SingleEntryEvaluable<TReturnedType, String> {
  FieldValueEvaluable({
    required super.value,
  });

  factory FieldValueEvaluable.fromJson(Map<String, dynamic> json) {
    return TextFieldValueEvaluable.fromJson(json)
        as FieldValueEvaluable<TReturnedType>;
  }
}
