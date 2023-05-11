// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fragment.workspace.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GWorkspaceFragmentData> _$gWorkspaceFragmentDataSerializer =
    new _$GWorkspaceFragmentDataSerializer();

class _$GWorkspaceFragmentDataSerializer
    implements StructuredSerializer<GWorkspaceFragmentData> {
  @override
  final Iterable<Type> types = const [
    GWorkspaceFragmentData,
    _$GWorkspaceFragmentData
  ];
  @override
  final String wireName = 'GWorkspaceFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GWorkspaceFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GWorkspaceFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GWorkspaceFragmentDataBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GWorkspaceFragmentData extends GWorkspaceFragmentData {
  @override
  final String G__typename;
  @override
  final String name;

  factory _$GWorkspaceFragmentData(
          [void Function(GWorkspaceFragmentDataBuilder)? updates]) =>
      (new GWorkspaceFragmentDataBuilder()..update(updates))._build();

  _$GWorkspaceFragmentData._({required this.G__typename, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GWorkspaceFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GWorkspaceFragmentData', 'name');
  }

  @override
  GWorkspaceFragmentData rebuild(
          void Function(GWorkspaceFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GWorkspaceFragmentDataBuilder toBuilder() =>
      new GWorkspaceFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GWorkspaceFragmentData &&
        G__typename == other.G__typename &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GWorkspaceFragmentData')
          ..add('G__typename', G__typename)
          ..add('name', name))
        .toString();
  }
}

class GWorkspaceFragmentDataBuilder
    implements Builder<GWorkspaceFragmentData, GWorkspaceFragmentDataBuilder> {
  _$GWorkspaceFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GWorkspaceFragmentDataBuilder() {
    GWorkspaceFragmentData._initializeBuilder(this);
  }

  GWorkspaceFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GWorkspaceFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GWorkspaceFragmentData;
  }

  @override
  void update(void Function(GWorkspaceFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GWorkspaceFragmentData build() => _build();

  _$GWorkspaceFragmentData _build() {
    final _$result = _$v ??
        new _$GWorkspaceFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GWorkspaceFragmentData', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GWorkspaceFragmentData', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
