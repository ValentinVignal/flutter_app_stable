// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.pokemons_1.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPokemons1Vars> _$gPokemons1VarsSerializer =
    new _$GPokemons1VarsSerializer();

class _$GPokemons1VarsSerializer
    implements StructuredSerializer<GPokemons1Vars> {
  @override
  final Iterable<Type> types = const [GPokemons1Vars, _$GPokemons1Vars];
  @override
  final String wireName = 'GPokemons1Vars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPokemons1Vars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GPokemons1Vars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GPokemons1VarsBuilder().build();
  }
}

class _$GPokemons1Vars extends GPokemons1Vars {
  factory _$GPokemons1Vars([void Function(GPokemons1VarsBuilder)? updates]) =>
      (new GPokemons1VarsBuilder()..update(updates))._build();

  _$GPokemons1Vars._() : super._();

  @override
  GPokemons1Vars rebuild(void Function(GPokemons1VarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemons1VarsBuilder toBuilder() =>
      new GPokemons1VarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemons1Vars;
  }

  @override
  int get hashCode {
    return 912460684;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GPokemons1Vars').toString();
  }
}

class GPokemons1VarsBuilder
    implements Builder<GPokemons1Vars, GPokemons1VarsBuilder> {
  _$GPokemons1Vars? _$v;

  GPokemons1VarsBuilder();

  @override
  void replace(GPokemons1Vars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemons1Vars;
  }

  @override
  void update(void Function(GPokemons1VarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemons1Vars build() => _build();

  _$GPokemons1Vars _build() {
    final _$result = _$v ?? new _$GPokemons1Vars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
