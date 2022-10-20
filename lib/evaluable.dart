import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'evaluable.g.dart';
part 'evaluable_text.dart';

/// {@template nl.evaluable.evaluable}
/// Item that can be evaluate with a [EvaluableInput].
///
/// The json of an evaluable has the following format:
/// ```jsonc
/// {
///   "returnedType": returnedType, // <- The returned type of the Evaluable. It is an entry of the enum EvaluableReturnedType.
///   "operator": operator, // <- The operator of the evaluable.
/// }
/// ```
/// {@endtemplate}
abstract class Evaluable<TReturnedType> {
  /// {@macro nl.evaluable.evaluable}
  Evaluable();

  /// {@macro nl.evaluable.evaluable}
  factory Evaluable.fromJson(Map<String, dynamic> json) {
    return FieldValueEvaluable<TReturnedType>.fromJson(json);
  }

  /// Returns the json representation of the evaluable.
  Map<String, dynamic> toJson() => _toJson();

  /// Returns the json representation without the meta data of the evaluable.
  Map<String, dynamic> _toJson();

  /// Evaluates the [Evaluable] with the given [input].
  TReturnedType evaluate();
}

/// {@template nl.evaluable.single_entry}
/// An evaluable with a single entry has the following format:
/// ```jsonc
/// {
///   "value": tValueType // <- The sub object
/// }
/// ```
/// {@endtemplate}
abstract class SingleEntryEvaluable<TReturnedType, TValueType>
    extends Evaluable<TReturnedType> with EquatableMixin {
  /// {@macro nl.evaluable.single_entry}
  SingleEntryEvaluable({
    required this.value,
  });

  /// The single entry the evaluable takes.
  final TValueType value;

  /// Creates a copy of this single entry evaluable but with the given fields
  /// replaced with the new values.
  SingleEntryEvaluable<TReturnedType, TValueType> copyWith({TValueType? value});

  @override
  List<Object?> get props => [value];
}

/// {@template nl.evaluable.field_value}
/// A evaluable that evaluates to the value of a field in the [EvaluableInput].
/// {@endtemplate}
abstract class FieldValueEvaluable<TReturnedType>
    extends SingleEntryEvaluable<TReturnedType, String> {
  /// {@macro nl.evaluable.field_value}
  FieldValueEvaluable({
    required super.value,
  });

  /// {@macro nl.evaluable.field_value}
  factory FieldValueEvaluable.fromJson(Map<String, dynamic> json) {
    return TextFieldValueEvaluable.fromJson(json)
        as FieldValueEvaluable<TReturnedType>;
  }

  @override
  FieldValueEvaluable<TReturnedType> copyWith({String? value});
}
