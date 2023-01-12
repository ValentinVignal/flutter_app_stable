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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
