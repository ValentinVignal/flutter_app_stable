// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdateUser> _$gUpdateUserSerializer = new _$GUpdateUserSerializer();

class _$GUpdateUserSerializer implements StructuredSerializer<GUpdateUser> {
  @override
  final Iterable<Type> types = const [GUpdateUser, _$GUpdateUser];
  @override
  final String wireName = 'GUpdateUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdateUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUpdateUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdateUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdateUser extends GUpdateUser {
  @override
  final String id;
  @override
  final String? name;
  @override
  final String? email;

  factory _$GUpdateUser([void Function(GUpdateUserBuilder)? updates]) =>
      (new GUpdateUserBuilder()..update(updates))._build();

  _$GUpdateUser._({required this.id, this.name, this.email}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GUpdateUser', 'id');
  }

  @override
  GUpdateUser rebuild(void Function(GUpdateUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdateUserBuilder toBuilder() => new GUpdateUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdateUser &&
        id == other.id &&
        name == other.name &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdateUser')
          ..add('id', id)
          ..add('name', name)
          ..add('email', email))
        .toString();
  }
}

class GUpdateUserBuilder implements Builder<GUpdateUser, GUpdateUserBuilder> {
  _$GUpdateUser? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GUpdateUserBuilder();

  GUpdateUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdateUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdateUser;
  }

  @override
  void update(void Function(GUpdateUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdateUser build() => _build();

  _$GUpdateUser _build() {
    final _$result = _$v ??
        new _$GUpdateUser._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'GUpdateUser', 'id'),
            name: name,
            email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
