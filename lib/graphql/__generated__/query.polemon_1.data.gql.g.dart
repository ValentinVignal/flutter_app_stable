// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.polemon_1.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPokemon1Data> _$gPokemon1DataSerializer =
    new _$GPokemon1DataSerializer();
Serializer<GPokemon1Data_pokemon> _$gPokemon1DataPokemonSerializer =
    new _$GPokemon1Data_pokemonSerializer();

class _$GPokemon1DataSerializer implements StructuredSerializer<GPokemon1Data> {
  @override
  final Iterable<Type> types = const [GPokemon1Data, _$GPokemon1Data];
  @override
  final String wireName = 'GPokemon1Data';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPokemon1Data object,
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
            specifiedType: const FullType(GPokemon1Data_pokemon)));
    }
    return result;
  }

  @override
  GPokemon1Data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPokemon1DataBuilder();

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
                  specifiedType: const FullType(GPokemon1Data_pokemon))!
              as GPokemon1Data_pokemon);
          break;
      }
    }

    return result.build();
  }
}

class _$GPokemon1Data_pokemonSerializer
    implements StructuredSerializer<GPokemon1Data_pokemon> {
  @override
  final Iterable<Type> types = const [
    GPokemon1Data_pokemon,
    _$GPokemon1Data_pokemon
  ];
  @override
  final String wireName = 'GPokemon1Data_pokemon';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPokemon1Data_pokemon object,
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
  GPokemon1Data_pokemon deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPokemon1Data_pokemonBuilder();

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

class _$GPokemon1Data extends GPokemon1Data {
  @override
  final String G__typename;
  @override
  final GPokemon1Data_pokemon? pokemon;

  factory _$GPokemon1Data([void Function(GPokemon1DataBuilder)? updates]) =>
      (new GPokemon1DataBuilder()..update(updates))._build();

  _$GPokemon1Data._({required this.G__typename, this.pokemon}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPokemon1Data', 'G__typename');
  }

  @override
  GPokemon1Data rebuild(void Function(GPokemon1DataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemon1DataBuilder toBuilder() => new GPokemon1DataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemon1Data &&
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
    return (newBuiltValueToStringHelper(r'GPokemon1Data')
          ..add('G__typename', G__typename)
          ..add('pokemon', pokemon))
        .toString();
  }
}

class GPokemon1DataBuilder
    implements Builder<GPokemon1Data, GPokemon1DataBuilder> {
  _$GPokemon1Data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPokemon1Data_pokemonBuilder? _pokemon;
  GPokemon1Data_pokemonBuilder get pokemon =>
      _$this._pokemon ??= new GPokemon1Data_pokemonBuilder();
  set pokemon(GPokemon1Data_pokemonBuilder? pokemon) =>
      _$this._pokemon = pokemon;

  GPokemon1DataBuilder() {
    GPokemon1Data._initializeBuilder(this);
  }

  GPokemon1DataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pokemon = $v.pokemon?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPokemon1Data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemon1Data;
  }

  @override
  void update(void Function(GPokemon1DataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemon1Data build() => _build();

  _$GPokemon1Data _build() {
    _$GPokemon1Data _$result;
    try {
      _$result = _$v ??
          new _$GPokemon1Data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPokemon1Data', 'G__typename'),
              pokemon: _pokemon?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pokemon';
        _pokemon?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPokemon1Data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPokemon1Data_pokemon extends GPokemon1Data_pokemon {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String type;

  factory _$GPokemon1Data_pokemon(
          [void Function(GPokemon1Data_pokemonBuilder)? updates]) =>
      (new GPokemon1Data_pokemonBuilder()..update(updates))._build();

  _$GPokemon1Data_pokemon._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPokemon1Data_pokemon', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GPokemon1Data_pokemon', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GPokemon1Data_pokemon', 'name');
    BuiltValueNullFieldError.checkNotNull(
        type, r'GPokemon1Data_pokemon', 'type');
  }

  @override
  GPokemon1Data_pokemon rebuild(
          void Function(GPokemon1Data_pokemonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemon1Data_pokemonBuilder toBuilder() =>
      new GPokemon1Data_pokemonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemon1Data_pokemon &&
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
    return (newBuiltValueToStringHelper(r'GPokemon1Data_pokemon')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class GPokemon1Data_pokemonBuilder
    implements Builder<GPokemon1Data_pokemon, GPokemon1Data_pokemonBuilder> {
  _$GPokemon1Data_pokemon? _$v;

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

  GPokemon1Data_pokemonBuilder() {
    GPokemon1Data_pokemon._initializeBuilder(this);
  }

  GPokemon1Data_pokemonBuilder get _$this {
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
  void replace(GPokemon1Data_pokemon other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemon1Data_pokemon;
  }

  @override
  void update(void Function(GPokemon1Data_pokemonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemon1Data_pokemon build() => _build();

  _$GPokemon1Data_pokemon _build() {
    final _$result = _$v ??
        new _$GPokemon1Data_pokemon._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GPokemon1Data_pokemon', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GPokemon1Data_pokemon', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GPokemon1Data_pokemon', 'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GPokemon1Data_pokemon', 'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
