// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemons.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPokemonsData> _$gPokemonsDataSerializer =
    new _$GPokemonsDataSerializer();
Serializer<GPokemonsData_pokemons> _$gPokemonsDataPokemonsSerializer =
    new _$GPokemonsData_pokemonsSerializer();

class _$GPokemonsDataSerializer implements StructuredSerializer<GPokemonsData> {
  @override
  final Iterable<Type> types = const [GPokemonsData, _$GPokemonsData];
  @override
  final String wireName = 'GPokemonsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPokemonsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'pokemons',
      serializers.serialize(object.pokemons,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GPokemonsData_pokemons)])),
    ];

    return result;
  }

  @override
  GPokemonsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPokemonsDataBuilder();

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
                const FullType(GPokemonsData_pokemons)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GPokemonsData_pokemonsSerializer
    implements StructuredSerializer<GPokemonsData_pokemons> {
  @override
  final Iterable<Type> types = const [
    GPokemonsData_pokemons,
    _$GPokemonsData_pokemons
  ];
  @override
  final String wireName = 'GPokemonsData_pokemons';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPokemonsData_pokemons object,
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
  GPokemonsData_pokemons deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPokemonsData_pokemonsBuilder();

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

class _$GPokemonsData extends GPokemonsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GPokemonsData_pokemons> pokemons;

  factory _$GPokemonsData([void Function(GPokemonsDataBuilder)? updates]) =>
      (new GPokemonsDataBuilder()..update(updates))._build();

  _$GPokemonsData._({required this.G__typename, required this.pokemons})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPokemonsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        pokemons, r'GPokemonsData', 'pokemons');
  }

  @override
  GPokemonsData rebuild(void Function(GPokemonsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemonsDataBuilder toBuilder() => new GPokemonsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemonsData &&
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
    return (newBuiltValueToStringHelper(r'GPokemonsData')
          ..add('G__typename', G__typename)
          ..add('pokemons', pokemons))
        .toString();
  }
}

class GPokemonsDataBuilder
    implements Builder<GPokemonsData, GPokemonsDataBuilder> {
  _$GPokemonsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GPokemonsData_pokemons>? _pokemons;
  ListBuilder<GPokemonsData_pokemons> get pokemons =>
      _$this._pokemons ??= new ListBuilder<GPokemonsData_pokemons>();
  set pokemons(ListBuilder<GPokemonsData_pokemons>? pokemons) =>
      _$this._pokemons = pokemons;

  GPokemonsDataBuilder() {
    GPokemonsData._initializeBuilder(this);
  }

  GPokemonsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _pokemons = $v.pokemons.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPokemonsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemonsData;
  }

  @override
  void update(void Function(GPokemonsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemonsData build() => _build();

  _$GPokemonsData _build() {
    _$GPokemonsData _$result;
    try {
      _$result = _$v ??
          new _$GPokemonsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPokemonsData', 'G__typename'),
              pokemons: pokemons.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pokemons';
        pokemons.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPokemonsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPokemonsData_pokemons extends GPokemonsData_pokemons {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GPokemonsData_pokemons(
          [void Function(GPokemonsData_pokemonsBuilder)? updates]) =>
      (new GPokemonsData_pokemonsBuilder()..update(updates))._build();

  _$GPokemonsData_pokemons._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPokemonsData_pokemons', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GPokemonsData_pokemons', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GPokemonsData_pokemons', 'name');
  }

  @override
  GPokemonsData_pokemons rebuild(
          void Function(GPokemonsData_pokemonsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemonsData_pokemonsBuilder toBuilder() =>
      new GPokemonsData_pokemonsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemonsData_pokemons &&
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
    return (newBuiltValueToStringHelper(r'GPokemonsData_pokemons')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GPokemonsData_pokemonsBuilder
    implements Builder<GPokemonsData_pokemons, GPokemonsData_pokemonsBuilder> {
  _$GPokemonsData_pokemons? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GPokemonsData_pokemonsBuilder() {
    GPokemonsData_pokemons._initializeBuilder(this);
  }

  GPokemonsData_pokemonsBuilder get _$this {
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
  void replace(GPokemonsData_pokemons other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemonsData_pokemons;
  }

  @override
  void update(void Function(GPokemonsData_pokemonsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemonsData_pokemons build() => _build();

  _$GPokemonsData_pokemons _build() {
    final _$result = _$v ??
        new _$GPokemonsData_pokemons._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GPokemonsData_pokemons', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GPokemonsData_pokemons', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GPokemonsData_pokemons', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
