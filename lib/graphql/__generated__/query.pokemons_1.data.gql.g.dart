// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.pokemons_1.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPokemons1Data> _$gPokemons1DataSerializer =
    new _$GPokemons1DataSerializer();
Serializer<GPokemons1Data_pokemons> _$gPokemons1DataPokemonsSerializer =
    new _$GPokemons1Data_pokemonsSerializer();

class _$GPokemons1DataSerializer
    implements StructuredSerializer<GPokemons1Data> {
  @override
  final Iterable<Type> types = const [GPokemons1Data, _$GPokemons1Data];
  @override
  final String wireName = 'GPokemons1Data';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPokemons1Data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'pokemons',
      serializers.serialize(object.pokemons,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GPokemons1Data_pokemons)])),
    ];

    return result;
  }

  @override
  GPokemons1Data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPokemons1DataBuilder();

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
                const FullType(GPokemons1Data_pokemons)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GPokemons1Data_pokemonsSerializer
    implements StructuredSerializer<GPokemons1Data_pokemons> {
  @override
  final Iterable<Type> types = const [
    GPokemons1Data_pokemons,
    _$GPokemons1Data_pokemons
  ];
  @override
  final String wireName = 'GPokemons1Data_pokemons';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPokemons1Data_pokemons object,
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
  GPokemons1Data_pokemons deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPokemons1Data_pokemonsBuilder();

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

class _$GPokemons1Data extends GPokemons1Data {
  @override
  final String G__typename;
  @override
  final BuiltList<GPokemons1Data_pokemons> pokemons;

  factory _$GPokemons1Data([void Function(GPokemons1DataBuilder)? updates]) =>
      (new GPokemons1DataBuilder()..update(updates))._build();

  _$GPokemons1Data._({required this.G__typename, required this.pokemons})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPokemons1Data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        pokemons, r'GPokemons1Data', 'pokemons');
  }

  @override
  GPokemons1Data rebuild(void Function(GPokemons1DataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemons1DataBuilder toBuilder() =>
      new GPokemons1DataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemons1Data &&
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
    return (newBuiltValueToStringHelper(r'GPokemons1Data')
          ..add('G__typename', G__typename)
          ..add('pokemons', pokemons))
        .toString();
  }
}

class GPokemons1DataBuilder
    implements Builder<GPokemons1Data, GPokemons1DataBuilder> {
  _$GPokemons1Data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GPokemons1Data_pokemons>? _pokemons;
  ListBuilder<GPokemons1Data_pokemons> get pokemons =>
      _$this._pokemons ??= new ListBuilder<GPokemons1Data_pokemons>();
  set pokemons(ListBuilder<GPokemons1Data_pokemons>? pokemons) =>
      _$this._pokemons = pokemons;

  GPokemons1DataBuilder() {
    GPokemons1Data._initializeBuilder(this);
  }

  GPokemons1DataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pokemons = $v.pokemons.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPokemons1Data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemons1Data;
  }

  @override
  void update(void Function(GPokemons1DataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemons1Data build() => _build();

  _$GPokemons1Data _build() {
    _$GPokemons1Data _$result;
    try {
      _$result = _$v ??
          new _$GPokemons1Data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPokemons1Data', 'G__typename'),
              pokemons: pokemons.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pokemons';
        pokemons.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPokemons1Data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPokemons1Data_pokemons extends GPokemons1Data_pokemons {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GPokemons1Data_pokemons(
          [void Function(GPokemons1Data_pokemonsBuilder)? updates]) =>
      (new GPokemons1Data_pokemonsBuilder()..update(updates))._build();

  _$GPokemons1Data_pokemons._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPokemons1Data_pokemons', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GPokemons1Data_pokemons', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GPokemons1Data_pokemons', 'name');
  }

  @override
  GPokemons1Data_pokemons rebuild(
          void Function(GPokemons1Data_pokemonsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemons1Data_pokemonsBuilder toBuilder() =>
      new GPokemons1Data_pokemonsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemons1Data_pokemons &&
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
    return (newBuiltValueToStringHelper(r'GPokemons1Data_pokemons')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GPokemons1Data_pokemonsBuilder
    implements
        Builder<GPokemons1Data_pokemons, GPokemons1Data_pokemonsBuilder> {
  _$GPokemons1Data_pokemons? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GPokemons1Data_pokemonsBuilder() {
    GPokemons1Data_pokemons._initializeBuilder(this);
  }

  GPokemons1Data_pokemonsBuilder get _$this {
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
  void replace(GPokemons1Data_pokemons other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemons1Data_pokemons;
  }

  @override
  void update(void Function(GPokemons1Data_pokemonsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemons1Data_pokemons build() => _build();

  _$GPokemons1Data_pokemons _build() {
    final _$result = _$v ??
        new _$GPokemons1Data_pokemons._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GPokemons1Data_pokemons', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GPokemons1Data_pokemons', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GPokemons1Data_pokemons', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
