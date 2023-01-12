// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemons.var.gql.dart';

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
