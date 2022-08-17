// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPokemonFragmentVars> _$gPokemonFragmentVarsSerializer =
    new _$GPokemonFragmentVarsSerializer();

class _$GPokemonFragmentVarsSerializer
    implements StructuredSerializer<GPokemonFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GPokemonFragmentVars,
    _$GPokemonFragmentVars
  ];
  @override
  final String wireName = 'GPokemonFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPokemonFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GPokemonFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GPokemonFragmentVarsBuilder().build();
  }
}

class _$GPokemonFragmentVars extends GPokemonFragmentVars {
  factory _$GPokemonFragmentVars(
          [void Function(GPokemonFragmentVarsBuilder)? updates]) =>
      (new GPokemonFragmentVarsBuilder()..update(updates))._build();

  _$GPokemonFragmentVars._() : super._();

  @override
  GPokemonFragmentVars rebuild(
          void Function(GPokemonFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemonFragmentVarsBuilder toBuilder() =>
      new GPokemonFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemonFragmentVars;
  }

  @override
  int get hashCode {
    return 320726202;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GPokemonFragmentVars').toString();
  }
}

class GPokemonFragmentVarsBuilder
    implements Builder<GPokemonFragmentVars, GPokemonFragmentVarsBuilder> {
  _$GPokemonFragmentVars? _$v;

  GPokemonFragmentVarsBuilder();

  @override
  void replace(GPokemonFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemonFragmentVars;
  }

  @override
  void update(void Function(GPokemonFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemonFragmentVars build() => _build();

  _$GPokemonFragmentVars _build() {
    final _$result = _$v ?? new _$GPokemonFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
