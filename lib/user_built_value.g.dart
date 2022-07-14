// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_built_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserBuiltValue extends UserBuiltValue {
  @override
  final String name;

  factory _$UserBuiltValue([void Function(UserBuiltValueBuilder)? updates]) =>
      (new UserBuiltValueBuilder()..update(updates))._build();

  _$UserBuiltValue._({required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'UserBuiltValue', 'name');
  }

  @override
  UserBuiltValue rebuild(void Function(UserBuiltValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuiltValueBuilder toBuilder() =>
      new UserBuiltValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserBuiltValue && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserBuiltValue')..add('name', name))
        .toString();
  }
}

class UserBuiltValueBuilder
    implements Builder<UserBuiltValue, UserBuiltValueBuilder> {
  _$UserBuiltValue? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  UserBuiltValueBuilder();

  UserBuiltValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserBuiltValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserBuiltValue;
  }

  @override
  void update(void Function(UserBuiltValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserBuiltValue build() => _build();

  _$UserBuiltValue _build() {
    final _$result = _$v ??
        new _$UserBuiltValue._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'UserBuiltValue', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
