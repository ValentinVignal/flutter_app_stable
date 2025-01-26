// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mutation.delete_user.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeleteUserData> _$gDeleteUserDataSerializer =
    new _$GDeleteUserDataSerializer();

class _$GDeleteUserDataSerializer
    implements StructuredSerializer<GDeleteUserData> {
  @override
  final Iterable<Type> types = const [GDeleteUserData, _$GDeleteUserData];
  @override
  final String wireName = 'GDeleteUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GDeleteUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteUser',
      serializers.serialize(object.deleteUser,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GDeleteUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteUserDataBuilder();

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
        case 'deleteUser':
          result.deleteUser = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteUserData extends GDeleteUserData {
  @override
  final String G__typename;
  @override
  final bool deleteUser;

  factory _$GDeleteUserData([void Function(GDeleteUserDataBuilder)? updates]) =>
      (new GDeleteUserDataBuilder()..update(updates))._build();

  _$GDeleteUserData._({required this.G__typename, required this.deleteUser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDeleteUserData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        deleteUser, r'GDeleteUserData', 'deleteUser');
  }

  @override
  GDeleteUserData rebuild(void Function(GDeleteUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteUserDataBuilder toBuilder() =>
      new GDeleteUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteUserData &&
        G__typename == other.G__typename &&
        deleteUser == other.deleteUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deleteUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeleteUserData')
          ..add('G__typename', G__typename)
          ..add('deleteUser', deleteUser))
        .toString();
  }
}

class GDeleteUserDataBuilder
    implements Builder<GDeleteUserData, GDeleteUserDataBuilder> {
  _$GDeleteUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _deleteUser;
  bool? get deleteUser => _$this._deleteUser;
  set deleteUser(bool? deleteUser) => _$this._deleteUser = deleteUser;

  GDeleteUserDataBuilder() {
    GDeleteUserData._initializeBuilder(this);
  }

  GDeleteUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteUser = $v.deleteUser;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteUserData;
  }

  @override
  void update(void Function(GDeleteUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteUserData build() => _build();

  _$GDeleteUserData _build() {
    final _$result = _$v ??
        new _$GDeleteUserData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GDeleteUserData', 'G__typename'),
            deleteUser: BuiltValueNullFieldError.checkNotNull(
                deleteUser, r'GDeleteUserData', 'deleteUser'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
