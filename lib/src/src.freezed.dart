// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'src.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Person _$PersonFromJson(Map<String, dynamic> json) {
  return _Person.fromJson(json);
}

/// @nodoc
mixin _$Person {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonCopyWith<Person> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res>;
  $Res call({String name, String email, String phone});
}

/// @nodoc
class _$PersonCopyWithImpl<$Res> implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

  final Person _value;
  // ignore: unused_field
  final $Res Function(Person) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PersonCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$$_PersonCopyWith(_$_Person value, $Res Function(_$_Person) then) =
      __$$_PersonCopyWithImpl<$Res>;
  @override
  $Res call({String name, String email, String phone});
}

/// @nodoc
class __$$_PersonCopyWithImpl<$Res> extends _$PersonCopyWithImpl<$Res>
    implements _$$_PersonCopyWith<$Res> {
  __$$_PersonCopyWithImpl(_$_Person _value, $Res Function(_$_Person) _then)
      : super(_value, (v) => _then(v as _$_Person));

  @override
  _$_Person get _value => super._value as _$_Person;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$_Person(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Person extends _Person {
  const _$_Person(
      {required this.name, required this.email, required this.phone})
      : super._();

  factory _$_Person.fromJson(Map<String, dynamic> json) =>
      _$$_PersonFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String phone;

  @override
  String toString() {
    return 'Person(name: $name, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Person &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  _$$_PersonCopyWith<_$_Person> get copyWith =>
      __$$_PersonCopyWithImpl<_$_Person>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonToJson(
      this,
    );
  }
}

abstract class _Person extends Person {
  const factory _Person(
      {required final String name,
      required final String email,
      required final String phone}) = _$_Person;
  const _Person._() : super._();

  factory _Person.fromJson(Map<String, dynamic> json) = _$_Person.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$_PersonCopyWith<_$_Person> get copyWith =>
      throw _privateConstructorUsedError;
}

OtherPerson _$OtherPersonFromJson(Map<String, dynamic> json) {
  return _OtherPerson.fromJson(json);
}

/// @nodoc
mixin _$OtherPerson {
  String get name => throw _privateConstructorUsedError;
  String get otherEmail => throw _privateConstructorUsedError;
  String get otherPhone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherPersonCopyWith<OtherPerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherPersonCopyWith<$Res> {
  factory $OtherPersonCopyWith(
          OtherPerson value, $Res Function(OtherPerson) then) =
      _$OtherPersonCopyWithImpl<$Res>;
  $Res call({String name, String otherEmail, String otherPhone});
}

/// @nodoc
class _$OtherPersonCopyWithImpl<$Res> implements $OtherPersonCopyWith<$Res> {
  _$OtherPersonCopyWithImpl(this._value, this._then);

  final OtherPerson _value;
  // ignore: unused_field
  final $Res Function(OtherPerson) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? otherEmail = freezed,
    Object? otherPhone = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      otherEmail: otherEmail == freezed
          ? _value.otherEmail
          : otherEmail // ignore: cast_nullable_to_non_nullable
              as String,
      otherPhone: otherPhone == freezed
          ? _value.otherPhone
          : otherPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_OtherPersonCopyWith<$Res>
    implements $OtherPersonCopyWith<$Res> {
  factory _$$_OtherPersonCopyWith(
          _$_OtherPerson value, $Res Function(_$_OtherPerson) then) =
      __$$_OtherPersonCopyWithImpl<$Res>;
  @override
  $Res call({String name, String otherEmail, String otherPhone});
}

/// @nodoc
class __$$_OtherPersonCopyWithImpl<$Res> extends _$OtherPersonCopyWithImpl<$Res>
    implements _$$_OtherPersonCopyWith<$Res> {
  __$$_OtherPersonCopyWithImpl(
      _$_OtherPerson _value, $Res Function(_$_OtherPerson) _then)
      : super(_value, (v) => _then(v as _$_OtherPerson));

  @override
  _$_OtherPerson get _value => super._value as _$_OtherPerson;

  @override
  $Res call({
    Object? name = freezed,
    Object? otherEmail = freezed,
    Object? otherPhone = freezed,
  }) {
    return _then(_$_OtherPerson(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      otherEmail: otherEmail == freezed
          ? _value.otherEmail
          : otherEmail // ignore: cast_nullable_to_non_nullable
              as String,
      otherPhone: otherPhone == freezed
          ? _value.otherPhone
          : otherPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OtherPerson extends _OtherPerson {
  const _$_OtherPerson(
      {required this.name, required this.otherEmail, required this.otherPhone})
      : super._();

  factory _$_OtherPerson.fromJson(Map<String, dynamic> json) =>
      _$$_OtherPersonFromJson(json);

  @override
  final String name;
  @override
  final String otherEmail;
  @override
  final String otherPhone;

  @override
  String toString() {
    return 'OtherPerson(name: $name, otherEmail: $otherEmail, otherPhone: $otherPhone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtherPerson &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.otherEmail, otherEmail) &&
            const DeepCollectionEquality()
                .equals(other.otherPhone, otherPhone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(otherEmail),
      const DeepCollectionEquality().hash(otherPhone));

  @JsonKey(ignore: true)
  @override
  _$$_OtherPersonCopyWith<_$_OtherPerson> get copyWith =>
      __$$_OtherPersonCopyWithImpl<_$_OtherPerson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OtherPersonToJson(
      this,
    );
  }
}

abstract class _OtherPerson extends OtherPerson {
  const factory _OtherPerson(
      {required final String name,
      required final String otherEmail,
      required final String otherPhone}) = _$_OtherPerson;
  const _OtherPerson._() : super._();

  factory _OtherPerson.fromJson(Map<String, dynamic> json) =
      _$_OtherPerson.fromJson;

  @override
  String get name;
  @override
  String get otherEmail;
  @override
  String get otherPhone;
  @override
  @JsonKey(ignore: true)
  _$$_OtherPersonCopyWith<_$_OtherPerson> get copyWith =>
      throw _privateConstructorUsedError;
}
