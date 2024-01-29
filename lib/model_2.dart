import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_app_stable/model_1.dart';

part 'model_2.g.dart';

@SerializersFor([
  Model2,
  Model1,
])
final Serializers _serializers = (_$_serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..addPlugin(P())
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Model1)]),
        ListBuilder<Model1>.new,
      ))
    .build();

class P extends SerializerPlugin {
  @override
  Object? afterDeserialize(Object? object, FullType specifiedType) {
    return object;
  }

  @override
  Object? afterSerialize(Object? object, FullType specifiedType) {
    if (specifiedType.root == BuiltList &&
        specifiedType.parameters.isNotEmpty &&
        specifiedType.parameters.first.root == Model1) {
      return jsonEncode(object);
    } else {
      return object;
    }
  }

  @override
  Object? beforeDeserialize(Object? object, FullType specifiedType) {
    if (specifiedType.root == BuiltList &&
        specifiedType.parameters.isNotEmpty &&
        specifiedType.parameters.first.root == Model1) {
      return jsonDecode(object as String);
    } else {
      return object;
    }
  }

  @override
  Object? beforeSerialize(Object? object, FullType specifiedType) {
    return object;
  }
}

abstract class Model2 implements Built<Model2, Model2Builder> {
  Model2._();
  factory Model2([void Function(Model2Builder) updates]) = _$Model2;

  Map<String, dynamic> toJson() {
    return _serializers.serializeWith(Model2.serializer, this)
        as Map<String, dynamic>;
  }

  static Model2 fromJson(Map<String, dynamic> json) {
    return _serializers.deserializeWith(Model2.serializer, json)!;
  }

  static Serializer<Model2> get serializer => _$model2Serializer;

  String get char;

  BuiltList<Model1> get list;
}
