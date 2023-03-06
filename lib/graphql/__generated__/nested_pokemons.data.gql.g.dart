// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nested_pokemons.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GNestedPokemonsData> _$gNestedPokemonsDataSerializer =
    new _$GNestedPokemonsDataSerializer();
Serializer<GNestedPokemonsData_nestedPokemons>
    _$gNestedPokemonsDataNestedPokemonsSerializer =
    new _$GNestedPokemonsData_nestedPokemonsSerializer();
Serializer<GNestedPokemonsData_nestedPokemons_nested>
    _$gNestedPokemonsDataNestedPokemonsNestedSerializer =
    new _$GNestedPokemonsData_nestedPokemons_nestedSerializer();

class _$GNestedPokemonsDataSerializer
    implements StructuredSerializer<GNestedPokemonsData> {
  @override
  final Iterable<Type> types = const [
    GNestedPokemonsData,
    _$GNestedPokemonsData
  ];
  @override
  final String wireName = 'GNestedPokemonsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNestedPokemonsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'nestedPokemons',
      serializers.serialize(object.nestedPokemons,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GNestedPokemonsData_nestedPokemons)])),
    ];

    return result;
  }

  @override
  GNestedPokemonsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNestedPokemonsDataBuilder();

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
        case 'nestedPokemons':
          result.nestedPokemons.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GNestedPokemonsData_nestedPokemons)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GNestedPokemonsData_nestedPokemonsSerializer
    implements StructuredSerializer<GNestedPokemonsData_nestedPokemons> {
  @override
  final Iterable<Type> types = const [
    GNestedPokemonsData_nestedPokemons,
    _$GNestedPokemonsData_nestedPokemons
  ];
  @override
  final String wireName = 'GNestedPokemonsData_nestedPokemons';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNestedPokemonsData_nestedPokemons object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'nested',
      serializers.serialize(object.nested,
          specifiedType:
              const FullType(GNestedPokemonsData_nestedPokemons_nested)),
    ];

    return result;
  }

  @override
  GNestedPokemonsData_nestedPokemons deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNestedPokemonsData_nestedPokemonsBuilder();

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
        case 'nested':
          result.nested.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GNestedPokemonsData_nestedPokemons_nested))!
              as GNestedPokemonsData_nestedPokemons_nested);
          break;
      }
    }

    return result.build();
  }
}

class _$GNestedPokemonsData_nestedPokemons_nestedSerializer
    implements StructuredSerializer<GNestedPokemonsData_nestedPokemons_nested> {
  @override
  final Iterable<Type> types = const [
    GNestedPokemonsData_nestedPokemons_nested,
    _$GNestedPokemonsData_nestedPokemons_nested
  ];
  @override
  final String wireName = 'GNestedPokemonsData_nestedPokemons_nested';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNestedPokemonsData_nestedPokemons_nested object,
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
  GNestedPokemonsData_nestedPokemons_nested deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNestedPokemonsData_nestedPokemons_nestedBuilder();

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

class _$GNestedPokemonsData extends GNestedPokemonsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GNestedPokemonsData_nestedPokemons> nestedPokemons;

  factory _$GNestedPokemonsData(
          [void Function(GNestedPokemonsDataBuilder)? updates]) =>
      (new GNestedPokemonsDataBuilder()..update(updates))._build();

  _$GNestedPokemonsData._(
      {required this.G__typename, required this.nestedPokemons})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GNestedPokemonsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        nestedPokemons, r'GNestedPokemonsData', 'nestedPokemons');
  }

  @override
  GNestedPokemonsData rebuild(
          void Function(GNestedPokemonsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNestedPokemonsDataBuilder toBuilder() =>
      new GNestedPokemonsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNestedPokemonsData &&
        G__typename == other.G__typename &&
        nestedPokemons == other.nestedPokemons;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nestedPokemons.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GNestedPokemonsData')
          ..add('G__typename', G__typename)
          ..add('nestedPokemons', nestedPokemons))
        .toString();
  }
}

class GNestedPokemonsDataBuilder
    implements Builder<GNestedPokemonsData, GNestedPokemonsDataBuilder> {
  _$GNestedPokemonsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GNestedPokemonsData_nestedPokemons>? _nestedPokemons;
  ListBuilder<GNestedPokemonsData_nestedPokemons> get nestedPokemons =>
      _$this._nestedPokemons ??=
          new ListBuilder<GNestedPokemonsData_nestedPokemons>();
  set nestedPokemons(
          ListBuilder<GNestedPokemonsData_nestedPokemons>? nestedPokemons) =>
      _$this._nestedPokemons = nestedPokemons;

  GNestedPokemonsDataBuilder() {
    GNestedPokemonsData._initializeBuilder(this);
  }

  GNestedPokemonsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nestedPokemons = $v.nestedPokemons.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNestedPokemonsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNestedPokemonsData;
  }

  @override
  void update(void Function(GNestedPokemonsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNestedPokemonsData build() => _build();

  _$GNestedPokemonsData _build() {
    _$GNestedPokemonsData _$result;
    try {
      _$result = _$v ??
          new _$GNestedPokemonsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GNestedPokemonsData', 'G__typename'),
              nestedPokemons: nestedPokemons.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nestedPokemons';
        nestedPokemons.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GNestedPokemonsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNestedPokemonsData_nestedPokemons
    extends GNestedPokemonsData_nestedPokemons {
  @override
  final String G__typename;
  @override
  final GNestedPokemonsData_nestedPokemons_nested nested;

  factory _$GNestedPokemonsData_nestedPokemons(
          [void Function(GNestedPokemonsData_nestedPokemonsBuilder)?
              updates]) =>
      (new GNestedPokemonsData_nestedPokemonsBuilder()..update(updates))
          ._build();

  _$GNestedPokemonsData_nestedPokemons._(
      {required this.G__typename, required this.nested})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GNestedPokemonsData_nestedPokemons', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        nested, r'GNestedPokemonsData_nestedPokemons', 'nested');
  }

  @override
  GNestedPokemonsData_nestedPokemons rebuild(
          void Function(GNestedPokemonsData_nestedPokemonsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNestedPokemonsData_nestedPokemonsBuilder toBuilder() =>
      new GNestedPokemonsData_nestedPokemonsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNestedPokemonsData_nestedPokemons &&
        G__typename == other.G__typename &&
        nested == other.nested;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, nested.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GNestedPokemonsData_nestedPokemons')
          ..add('G__typename', G__typename)
          ..add('nested', nested))
        .toString();
  }
}

class GNestedPokemonsData_nestedPokemonsBuilder
    implements
        Builder<GNestedPokemonsData_nestedPokemons,
            GNestedPokemonsData_nestedPokemonsBuilder> {
  _$GNestedPokemonsData_nestedPokemons? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GNestedPokemonsData_nestedPokemons_nestedBuilder? _nested;
  GNestedPokemonsData_nestedPokemons_nestedBuilder get nested =>
      _$this._nested ??= new GNestedPokemonsData_nestedPokemons_nestedBuilder();
  set nested(GNestedPokemonsData_nestedPokemons_nestedBuilder? nested) =>
      _$this._nested = nested;

  GNestedPokemonsData_nestedPokemonsBuilder() {
    GNestedPokemonsData_nestedPokemons._initializeBuilder(this);
  }

  GNestedPokemonsData_nestedPokemonsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nested = $v.nested.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNestedPokemonsData_nestedPokemons other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNestedPokemonsData_nestedPokemons;
  }

  @override
  void update(
      void Function(GNestedPokemonsData_nestedPokemonsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GNestedPokemonsData_nestedPokemons build() => _build();

  _$GNestedPokemonsData_nestedPokemons _build() {
    _$GNestedPokemonsData_nestedPokemons _$result;
    try {
      _$result = _$v ??
          new _$GNestedPokemonsData_nestedPokemons._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  r'GNestedPokemonsData_nestedPokemons', 'G__typename'),
              nested: nested.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        nested.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GNestedPokemonsData_nestedPokemons', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNestedPokemonsData_nestedPokemons_nested
    extends GNestedPokemonsData_nestedPokemons_nested {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GNestedPokemonsData_nestedPokemons_nested(
          [void Function(GNestedPokemonsData_nestedPokemons_nestedBuilder)?
              updates]) =>
      (new GNestedPokemonsData_nestedPokemons_nestedBuilder()..update(updates))
          ._build();

  _$GNestedPokemonsData_nestedPokemons_nested._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        r'GNestedPokemonsData_nestedPokemons_nested', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GNestedPokemonsData_nestedPokemons_nested', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GNestedPokemonsData_nestedPokemons_nested', 'name');
  }

  @override
  GNestedPokemonsData_nestedPokemons_nested rebuild(
          void Function(GNestedPokemonsData_nestedPokemons_nestedBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNestedPokemonsData_nestedPokemons_nestedBuilder toBuilder() =>
      new GNestedPokemonsData_nestedPokemons_nestedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNestedPokemonsData_nestedPokemons_nested &&
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
    return (newBuiltValueToStringHelper(
            r'GNestedPokemonsData_nestedPokemons_nested')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GNestedPokemonsData_nestedPokemons_nestedBuilder
    implements
        Builder<GNestedPokemonsData_nestedPokemons_nested,
            GNestedPokemonsData_nestedPokemons_nestedBuilder> {
  _$GNestedPokemonsData_nestedPokemons_nested? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GNestedPokemonsData_nestedPokemons_nestedBuilder() {
    GNestedPokemonsData_nestedPokemons_nested._initializeBuilder(this);
  }

  GNestedPokemonsData_nestedPokemons_nestedBuilder get _$this {
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
  void replace(GNestedPokemonsData_nestedPokemons_nested other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNestedPokemonsData_nestedPokemons_nested;
  }

  @override
  void update(
      void Function(GNestedPokemonsData_nestedPokemons_nestedBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GNestedPokemonsData_nestedPokemons_nested build() => _build();

  _$GNestedPokemonsData_nestedPokemons_nested _build() {
    final _$result = _$v ??
        new _$GNestedPokemonsData_nestedPokemons_nested._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GNestedPokemonsData_nestedPokemons_nested', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GNestedPokemonsData_nestedPokemons_nested', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GNestedPokemonsData_nestedPokemons_nested', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
