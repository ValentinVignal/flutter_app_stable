// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'src.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Person _$$_PersonFromJson(Map<String, dynamic> json) => _$_Person(
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$_PersonToJson(_$_Person instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
    };

_$_OtherPerson _$$_OtherPersonFromJson(Map<String, dynamic> json) =>
    _$_OtherPerson(
      name: json['name'] as String,
      otherEmail: json['otherEmail'] as String,
      otherPhone: json['otherPhone'] as String,
    );

Map<String, dynamic> _$$_OtherPersonToJson(_$_OtherPerson instance) =>
    <String, dynamic>{
      'name': instance.name,
      'otherEmail': instance.otherEmail,
      'otherPhone': instance.otherPhone,
    };
