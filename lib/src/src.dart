import 'package:freezed_annotation/freezed_annotation.dart';

part 'src.freezed.dart';
part 'src.g.dart';

@freezed
class Person extends SuperPerson with _$Person {
  const factory Person({
    required String name,
    required String email,
    required String phone,
  }) = _Person;

  const Person._();

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);

  @override
  String get nameLowercase => name.toLowerCase();
}

@freezed
class OtherPerson extends SuperPerson with _$OtherPerson {
  const factory OtherPerson({
    required String name,
    required String otherEmail,
    required String otherPhone,
  }) = _OtherPerson;

  const OtherPerson._();

  factory OtherPerson.fromJson(Map<String, dynamic> json) =>
      _$OtherPersonFromJson(json);

  @override
  String get nameLowercase => name.toLowerCase();
}

abstract class SuperPerson {
  const SuperPerson();
  String get name;
  String get nameUppercase => name.toUpperCase();
  String get nameLowercase;

  SuperPerson copyWith({String name});
}
