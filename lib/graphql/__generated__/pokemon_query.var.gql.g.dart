// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_query.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPokemonsVars> _$gPokemonsVarsSerializer =
    new _$GPokemonsVarsSerializer();

class _$GPokemonsVarsSerializer implements StructuredSerializer<GPokemonsVars> {
  @override
  final Iterable<Type> types = const [GPokemonsVars, _$GPokemonsVars];
  @override
  final String wireName = 'GPokemonsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPokemonsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GPokemonsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GPokemonsVarsBuilder().build();
  }
}

class _$GPokemonsVars extends GPokemonsVars {
  factory _$GPokemonsVars([void Function(GPokemonsVarsBuilder)? updates]) =>
      (new GPokemonsVarsBuilder()..update(updates))._build();

  _$GPokemonsVars._() : super._();

  @override
  GPokemonsVars rebuild(void Function(GPokemonsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemonsVarsBuilder toBuilder() => new GPokemonsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemonsVars;
  }

  @override
  int get hashCode {
    return 66091771;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GPokemonsVars').toString();
  }
}

class GPokemonsVarsBuilder
    implements Builder<GPokemonsVars, GPokemonsVarsBuilder> {
  _$GPokemonsVars? _$v;

  GPokemonsVarsBuilder();

  @override
  void replace(GPokemonsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemonsVars;
  }

  @override
  void update(void Function(GPokemonsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemonsVars build() => _build();

  _$GPokemonsVars _build() {
    final _$result = _$v ?? new _$GPokemonsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
