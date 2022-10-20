import 'package:json_annotation/json_annotation.dart';

part 'evaluable_operator.g.dart';

/// The supported operators.
@JsonEnum(alwaysCreate: true)
enum EvaluableOperator {
  /// Evaluates to `true` if the two given entries are equal.
  @JsonValue('==')
  equals,

  /// Evaluates to `true` if the two given entries are different.
  @JsonValue('!=')
  notEquals,

  /// Evaluates to `true` if the given entry evaluates to `false`.
  @JsonValue('!')
  not,

  /// Evaluates to `true` if at least one of the entries evaluates to `true`.
  @JsonValue('||')
  or,

  /// Evaluates to `true` if all the entries evaluates to `true`.
  @JsonValue('&&')
  and,

  /// Evaluates to the value given in the single entry.
  @JsonValue('static')
  staticValue,

  /// Evaluates to `true` if the left entry string matches the right entry
  /// regexp.
  matchesRegExp,

  /// Evaluates `then` if `if` evaluates to `true`, evaluates `else` otherwise.
  @JsonValue('if')
  ifElse,

  /// Evaluates to the value of the given field.
  fieldValue,
}

/// Extension on [EvaluableOperator].
extension EvaluableOperatorExtension on EvaluableOperator {
  /// Returns the operator as a string.
  String get symbol => _$EvaluableOperatorEnumMap[this]!;
}
