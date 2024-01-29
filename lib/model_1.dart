import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'model_1.g.dart';

@SerializersFor([
  Model1,
])
final Serializers _serializers =
    (_$_serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

abstract class Model1 implements Built<Model1, Model1Builder> {
  Model1._();
  factory Model1([void Function(Model1Builder) updates]) = _$Model1;

  Map<String, dynamic> toJson() {
    return _serializers.serializeWith(Model1.serializer, this)
        as Map<String, dynamic>;
  }

  static Model1 fromJson(Map<String, dynamic> json) {
    return _serializers.deserializeWith(Model1.serializer, json)!;
  }

  static Serializer<Model1> get serializer => _$model1Serializer;

  bool get boolean;

  int get integer;
}
