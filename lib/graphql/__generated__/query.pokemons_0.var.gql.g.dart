// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.pokemons_0.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPokemons0Vars> _$gPokemons0VarsSerializer =
    new _$GPokemons0VarsSerializer();

class _$GPokemons0VarsSerializer
    implements StructuredSerializer<GPokemons0Vars> {
  @override
  final Iterable<Type> types = const [GPokemons0Vars, _$GPokemons0Vars];
  @override
  final String wireName = 'GPokemons0Vars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPokemons0Vars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GPokemons0Vars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GPokemons0VarsBuilder().build();
  }
}

class _$GPokemons0Vars extends GPokemons0Vars {
  factory _$GPokemons0Vars([void Function(GPokemons0VarsBuilder)? updates]) =>
      (new GPokemons0VarsBuilder()..update(updates))._build();

  _$GPokemons0Vars._() : super._();

  @override
  GPokemons0Vars rebuild(void Function(GPokemons0VarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemons0VarsBuilder toBuilder() =>
      new GPokemons0VarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemons0Vars;
  }

  @override
  int get hashCode {
    return 1004424727;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GPokemons0Vars').toString();
  }
}

class GPokemons0VarsBuilder
    implements Builder<GPokemons0Vars, GPokemons0VarsBuilder> {
  _$GPokemons0Vars? _$v;

  GPokemons0VarsBuilder();

  @override
  void replace(GPokemons0Vars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemons0Vars;
  }

  @override
  void update(void Function(GPokemons0VarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemons0Vars build() => _build();

  _$GPokemons0Vars _build() {
    final _$result = _$v ?? new _$GPokemons0Vars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
