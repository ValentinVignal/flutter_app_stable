// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mutation.update_user.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdateUserData> _$gUpdateUserDataSerializer =
    new _$GUpdateUserDataSerializer();
Serializer<GUpdateUserData_updateUser> _$gUpdateUserDataUpdateUserSerializer =
    new _$GUpdateUserData_updateUserSerializer();

class _$GUpdateUserDataSerializer
    implements StructuredSerializer<GUpdateUserData> {
  @override
  final Iterable<Type> types = const [GUpdateUserData, _$GUpdateUserData];
  @override
  final String wireName = 'GUpdateUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateUser',
      serializers.serialize(object.updateUser,
          specifiedType: const FullType(GUpdateUserData_updateUser)),
    ];

    return result;
  }

  @override
  GUpdateUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserDataBuilder();

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
        case 'updateUser':
          result.updateUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUpdateUserData_updateUser))!
              as GUpdateUserData_updateUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserData_updateUserSerializer
    implements StructuredSerializer<GUpdateUserData_updateUser> {
  @override
  final Iterable<Type> types = const [
    GUpdateUserData_updateUser,
    _$GUpdateUserData_updateUser
  ];
  @override
  final String wireName = 'GUpdateUserData_updateUser';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdateUserData_updateUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUpdateUserData_updateUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserData_updateUserBuilder();

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
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUserData extends GUpdateUserData {
  @override
  final String G__typename;
  @override
  final GUpdateUserData_updateUser updateUser;

  factory _$GUpdateUserData([void Function(GUpdateUserDataBuilder)? updates]) =>
      (new GUpdateUserDataBuilder()..update(updates))._build();

  _$GUpdateUserData._({required this.G__typename, required this.updateUser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateUserData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        updateUser, r'GUpdateUserData', 'updateUser');
  }

  @override
  GUpdateUserData rebuild(void Function(GUpdateUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserDataBuilder toBuilder() =>
      new GUpdateUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserData &&
        G__typename == other.G__typename &&
        updateUser == other.updateUser;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updateUser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUserData')
          ..add('G__typename', G__typename)
          ..add('updateUser', updateUser))
        .toString();
  }
}

class GUpdateUserDataBuilder
    implements Builder<GUpdateUserData, GUpdateUserDataBuilder> {
  _$GUpdateUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdateUserData_updateUserBuilder? _updateUser;
  GUpdateUserData_updateUserBuilder get updateUser =>
      _$this._updateUser ??= new GUpdateUserData_updateUserBuilder();
  set updateUser(GUpdateUserData_updateUserBuilder? updateUser) =>
      _$this._updateUser = updateUser;

  GUpdateUserDataBuilder() {
    GUpdateUserData._initializeBuilder(this);
  }

  GUpdateUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateUser = $v.updateUser.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserData;
  }

  @override
  void update(void Function(GUpdateUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserData build() => _build();

  _$GUpdateUserData _build() {
    _$GUpdateUserData _$result;
    try {
      _$result = _$v ??
          new _$GUpdateUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUpdateUserData', 'G__typename'),
              updateUser: updateUser.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateUser';
        updateUser.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdateUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdateUserData_updateUser extends GUpdateUserData_updateUser {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String email;

  factory _$GUpdateUserData_updateUser(
          [void Function(GUpdateUserData_updateUserBuilder)? updates]) =>
      (new GUpdateUserData_updateUserBuilder()..update(updates))._build();

  _$GUpdateUserData_updateUser._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdateUserData_updateUser', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GUpdateUserData_updateUser', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GUpdateUserData_updateUser', 'name');
    BuiltValueNullFieldError.checkNotNull(
        email, r'GUpdateUserData_updateUser', 'email');
  }

  @override
  GUpdateUserData_updateUser rebuild(
          void Function(GUpdateUserData_updateUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserData_updateUserBuilder toBuilder() =>
      new GUpdateUserData_updateUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUserData_updateUser &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUserData_updateUser')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('email', email))
        .toString();
  }
}

class GUpdateUserData_updateUserBuilder
    implements
        Builder<GUpdateUserData_updateUser, GUpdateUserData_updateUserBuilder> {
  _$GUpdateUserData_updateUser? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GUpdateUserData_updateUserBuilder() {
    GUpdateUserData_updateUser._initializeBuilder(this);
  }

  GUpdateUserData_updateUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUserData_updateUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUserData_updateUser;
  }

  @override
  void update(void Function(GUpdateUserData_updateUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUserData_updateUser build() => _build();

  _$GUpdateUserData_updateUser _build() {
    final _$result = _$v ??
        new _$GUpdateUserData_updateUser._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUpdateUserData_updateUser', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GUpdateUserData_updateUser', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GUpdateUserData_updateUser', 'name'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GUpdateUserData_updateUser', 'email'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
