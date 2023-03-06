// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nested_pokemons.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GNestedPokemonsVars> _$gNestedPokemonsVarsSerializer =
    new _$GNestedPokemonsVarsSerializer();

class _$GNestedPokemonsVarsSerializer
    implements StructuredSerializer<GNestedPokemonsVars> {
  @override
  final Iterable<Type> types = const [
    GNestedPokemonsVars,
    _$GNestedPokemonsVars
  ];
  @override
  final String wireName = 'GNestedPokemonsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNestedPokemonsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GNestedPokemonsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GNestedPokemonsVarsBuilder().build();
  }
}

class _$GNestedPokemonsVars extends GNestedPokemonsVars {
  factory _$GNestedPokemonsVars(
          [void Function(GNestedPokemonsVarsBuilder)? updates]) =>
      (new GNestedPokemonsVarsBuilder()..update(updates))._build();

  _$GNestedPokemonsVars._() : super._();

  @override
  GNestedPokemonsVars rebuild(
          void Function(GNestedPokemonsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNestedPokemonsVarsBuilder toBuilder() =>
      new GNestedPokemonsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNestedPokemonsVars;
  }

  @override
  int get hashCode {
    return 458366117;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GNestedPokemonsVars').toString();
  }
}

class GNestedPokemonsVarsBuilder
    implements Builder<GNestedPokemonsVars, GNestedPokemonsVarsBuilder> {
  _$GNestedPokemonsVars? _$v;

  GNestedPokemonsVarsBuilder();

  @override
  void replace(GNestedPokemonsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNestedPokemonsVars;
  }

  @override
  void update(void Function(GNestedPokemonsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNestedPokemonsVars build() => _build();

  _$GNestedPokemonsVars _build() {
    final _$result = _$v ?? new _$GNestedPokemonsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
