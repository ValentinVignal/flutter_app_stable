// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_fragment.data.gql.dart';

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

  factory _$GPokemonFragmentData(
          [void Function(GPokemonFragmentDataBuilder)? updates]) =>
      (new GPokemonFragmentDataBuilder()..update(updates))._build();

  _$GPokemonFragmentData._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPokemonFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GPokemonFragmentData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GPokemonFragmentData', 'name');
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
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPokemonFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
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

  GPokemonFragmentDataBuilder() {
    GPokemonFragmentData._initializeBuilder(this);
  }

  GPokemonFragmentDataBuilder get _$this {
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
                name, r'GPokemonFragmentData', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
