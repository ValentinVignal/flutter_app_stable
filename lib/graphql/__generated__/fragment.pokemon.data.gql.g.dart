// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fragment.pokemon.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPokemonFragmentData> _$gPokemonFragmentDataSerializer =
    new _$GPokemonFragmentDataSerializer();

class _$GPokemonFragmentDataSerializer
    implements StructuredSerializer<GPokemonFragmentData> {
  @override
  final Iterable<Type> types = const [
    GPokemonFragmentData,
    _$GPokemonFragmentData
  ];
  @override
  final String wireName = 'GPokemonFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPokemonFragmentData object,
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
  GPokemonFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPokemonFragmentDataBuilder();

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

class _$GPokemonFragmentData extends GPokemonFragmentData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String type;

  factory _$GPokemonFragmentData(
          [void Function(GPokemonFragmentDataBuilder)? updates]) =>
      (new GPokemonFragmentDataBuilder()..update(updates))._build();

  _$GPokemonFragmentData._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPokemonFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GPokemonFragmentData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GPokemonFragmentData', 'name');
    BuiltValueNullFieldError.checkNotNull(
        type, r'GPokemonFragmentData', 'type');
  }

  @override
  GPokemonFragmentData rebuild(
          void Function(GPokemonFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemonFragmentDataBuilder toBuilder() =>
      new GPokemonFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemonFragmentData &&
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
    return (newBuiltValueToStringHelper(r'GPokemonFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class GPokemonFragmentDataBuilder
    implements Builder<GPokemonFragmentData, GPokemonFragmentDataBuilder> {
  _$GPokemonFragmentData? _$v;

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

  GPokemonFragmentDataBuilder() {
    GPokemonFragmentData._initializeBuilder(this);
  }

  GPokemonFragmentDataBuilder get _$this {
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
  void replace(GPokemonFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemonFragmentData;
  }

  @override
  void update(void Function(GPokemonFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemonFragmentData build() => _build();

  _$GPokemonFragmentData _build() {
    final _$result = _$v ??
        new _$GPokemonFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GPokemonFragmentData', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GPokemonFragmentData', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GPokemonFragmentData', 'name'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GPokemonFragmentData', 'type'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
