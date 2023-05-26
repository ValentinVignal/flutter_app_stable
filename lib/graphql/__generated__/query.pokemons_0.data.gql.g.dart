// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.pokemons_0.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPokemons0Data> _$gPokemons0DataSerializer =
    new _$GPokemons0DataSerializer();
Serializer<GPokemons0Data_pokemons> _$gPokemons0DataPokemonsSerializer =
    new _$GPokemons0Data_pokemonsSerializer();

class _$GPokemons0DataSerializer
    implements StructuredSerializer<GPokemons0Data> {
  @override
  final Iterable<Type> types = const [GPokemons0Data, _$GPokemons0Data];
  @override
  final String wireName = 'GPokemons0Data';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPokemons0Data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'pokemons',
      serializers.serialize(object.pokemons,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GPokemons0Data_pokemons)])),
    ];

    return result;
  }

  @override
  GPokemons0Data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPokemons0DataBuilder();

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
        case 'pokemons':
          result.pokemons.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GPokemons0Data_pokemons)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GPokemons0Data_pokemonsSerializer
    implements StructuredSerializer<GPokemons0Data_pokemons> {
  @override
  final Iterable<Type> types = const [
    GPokemons0Data_pokemons,
    _$GPokemons0Data_pokemons
  ];
  @override
  final String wireName = 'GPokemons0Data_pokemons';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPokemons0Data_pokemons object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GPokemons0Data_pokemons deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPokemons0Data_pokemonsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GPokemons0Data extends GPokemons0Data {
  @override
  final String G__typename;
  @override
  final BuiltList<GPokemons0Data_pokemons> pokemons;

  factory _$GPokemons0Data([void Function(GPokemons0DataBuilder)? updates]) =>
      (new GPokemons0DataBuilder()..update(updates))._build();

  _$GPokemons0Data._({required this.G__typename, required this.pokemons})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPokemons0Data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        pokemons, r'GPokemons0Data', 'pokemons');
  }

  @override
  GPokemons0Data rebuild(void Function(GPokemons0DataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemons0DataBuilder toBuilder() =>
      new GPokemons0DataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemons0Data &&
        G__typename == other.G__typename &&
        pokemons == other.pokemons;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, pokemons.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPokemons0Data')
          ..add('G__typename', G__typename)
          ..add('pokemons', pokemons))
        .toString();
  }
}

class GPokemons0DataBuilder
    implements Builder<GPokemons0Data, GPokemons0DataBuilder> {
  _$GPokemons0Data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GPokemons0Data_pokemons>? _pokemons;
  ListBuilder<GPokemons0Data_pokemons> get pokemons =>
      _$this._pokemons ??= new ListBuilder<GPokemons0Data_pokemons>();
  set pokemons(ListBuilder<GPokemons0Data_pokemons>? pokemons) =>
      _$this._pokemons = pokemons;

  GPokemons0DataBuilder() {
    GPokemons0Data._initializeBuilder(this);
  }

  GPokemons0DataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pokemons = $v.pokemons.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPokemons0Data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemons0Data;
  }

  @override
  void update(void Function(GPokemons0DataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemons0Data build() => _build();

  _$GPokemons0Data _build() {
    _$GPokemons0Data _$result;
    try {
      _$result = _$v ??
          new _$GPokemons0Data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPokemons0Data', 'G__typename'),
              pokemons: pokemons.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pokemons';
        pokemons.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPokemons0Data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPokemons0Data_pokemons extends GPokemons0Data_pokemons {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GPokemons0Data_pokemons(
          [void Function(GPokemons0Data_pokemonsBuilder)? updates]) =>
      (new GPokemons0Data_pokemonsBuilder()..update(updates))._build();

  _$GPokemons0Data_pokemons._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPokemons0Data_pokemons', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GPokemons0Data_pokemons', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GPokemons0Data_pokemons', 'name');
  }

  @override
  GPokemons0Data_pokemons rebuild(
          void Function(GPokemons0Data_pokemonsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemons0Data_pokemonsBuilder toBuilder() =>
      new GPokemons0Data_pokemonsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemons0Data_pokemons &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPokemons0Data_pokemons')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GPokemons0Data_pokemonsBuilder
    implements
        Builder<GPokemons0Data_pokemons, GPokemons0Data_pokemonsBuilder> {
  _$GPokemons0Data_pokemons? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GPokemons0Data_pokemonsBuilder() {
    GPokemons0Data_pokemons._initializeBuilder(this);
  }

  GPokemons0Data_pokemonsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPokemons0Data_pokemons other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemons0Data_pokemons;
  }

  @override
  void update(void Function(GPokemons0Data_pokemonsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemons0Data_pokemons build() => _build();

  _$GPokemons0Data_pokemons _build() {
    final _$result = _$v ??
        new _$GPokemons0Data_pokemons._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GPokemons0Data_pokemons', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GPokemons0Data_pokemons', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GPokemons0Data_pokemons', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
