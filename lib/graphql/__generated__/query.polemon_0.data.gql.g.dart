// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.polemon_0.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPokemon0Data> _$gPokemon0DataSerializer =
    new _$GPokemon0DataSerializer();
Serializer<GPokemon0Data_pokemon> _$gPokemon0DataPokemonSerializer =
    new _$GPokemon0Data_pokemonSerializer();

class _$GPokemon0DataSerializer implements StructuredSerializer<GPokemon0Data> {
  @override
  final Iterable<Type> types = const [GPokemon0Data, _$GPokemon0Data];
  @override
  final String wireName = 'GPokemon0Data';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPokemon0Data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.pokemon;
    if (value != null) {
      result
        ..add('pokemon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GPokemon0Data_pokemon)));
    }
    return result;
  }

  @override
  GPokemon0Data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPokemon0DataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pokemon':
          result.pokemon.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GPokemon0Data_pokemon))!
              as GPokemon0Data_pokemon);
          break;
      }
    }

    return result.build();
  }
}

class _$GPokemon0Data_pokemonSerializer
    implements StructuredSerializer<GPokemon0Data_pokemon> {
  @override
  final Iterable<Type> types = const [
    GPokemon0Data_pokemon,
    _$GPokemon0Data_pokemon
  ];
  @override
  final String wireName = 'GPokemon0Data_pokemon';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPokemon0Data_pokemon object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GPokemon0Data_pokemon deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPokemon0Data_pokemonBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GPokemon0Data extends GPokemon0Data {
  @override
  final String G__typename;
  @override
  final GPokemon0Data_pokemon? pokemon;

  factory _$GPokemon0Data([void Function(GPokemon0DataBuilder)? updates]) =>
      (new GPokemon0DataBuilder()..update(updates))._build();

  _$GPokemon0Data._({required this.G__typename, this.pokemon}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPokemon0Data', 'G__typename');
  }

  @override
  GPokemon0Data rebuild(void Function(GPokemon0DataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemon0DataBuilder toBuilder() => new GPokemon0DataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemon0Data &&
        G__typename == other.G__typename &&
        pokemon == other.pokemon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pokemon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPokemon0Data')
          ..add('G__typename', G__typename)
          ..add('pokemon', pokemon))
        .toString();
  }
}

class GPokemon0DataBuilder
    implements Builder<GPokemon0Data, GPokemon0DataBuilder> {
  _$GPokemon0Data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPokemon0Data_pokemonBuilder? _pokemon;
  GPokemon0Data_pokemonBuilder get pokemon =>
      _$this._pokemon ??= new GPokemon0Data_pokemonBuilder();
  set pokemon(GPokemon0Data_pokemonBuilder? pokemon) =>
      _$this._pokemon = pokemon;

  GPokemon0DataBuilder() {
    GPokemon0Data._initializeBuilder(this);
  }

  GPokemon0DataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pokemon = $v.pokemon?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPokemon0Data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemon0Data;
  }

  @override
  void update(void Function(GPokemon0DataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemon0Data build() => _build();

  _$GPokemon0Data _build() {
    _$GPokemon0Data _$result;
    try {
      _$result = _$v ??
          new _$GPokemon0Data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPokemon0Data', 'G__typename'),
              pokemon: _pokemon?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pokemon';
        _pokemon?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPokemon0Data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPokemon0Data_pokemon extends GPokemon0Data_pokemon {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String type;

  factory _$GPokemon0Data_pokemon(
          [void Function(GPokemon0Data_pokemonBuilder)? updates]) =>
      (new GPokemon0Data_pokemonBuilder()..update(updates))._build();

  _$GPokemon0Data_pokemon._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPokemon0Data_pokemon', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GPokemon0Data_pokemon', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GPokemon0Data_pokemon', 'name');
    BuiltValueNullFieldError.checkNotNull(
        type, r'GPokemon0Data_pokemon', 'type');
  }

  @override
  GPokemon0Data_pokemon rebuild(
          void Function(GPokemon0Data_pokemonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemon0Data_pokemonBuilder toBuilder() =>
      new GPokemon0Data_pokemonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemon0Data_pokemon &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPokemon0Data_pokemon')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class GPokemon0Data_pokemonBuilder
    implements Builder<GPokemon0Data_pokemon, GPokemon0Data_pokemonBuilder> {
  _$GPokemon0Data_pokemon? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  GPokemon0Data_pokemonBuilder() {
    GPokemon0Data_pokemon._initializeBuilder(this);
  }

  GPokemon0Data_pokemonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPokemon0Data_pokemon other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemon0Data_pokemon;
  }

  @override
  void update(void Function(GPokemon0Data_pokemonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemon0Data_pokemon build() => _build();

  _$GPokemon0Data_pokemon _build() {
    final _$result = _$v ??
        new _$GPokemon0Data_pokemon._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GPokemon0Data_pokemon', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GPokemon0Data_pokemon', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GPokemon0Data_pokemon', 'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GPokemon0Data_pokemon', 'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
