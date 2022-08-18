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

@immutable
abstract class SuperPerson {
  const SuperPerson();

  String get name;

  String get nameUppercase => name.toUpperCase();
  String get nameLowercase;
}
