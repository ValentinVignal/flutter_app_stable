import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:flutter_app_stable/model_1.dart';
import 'package:flutter_app_stable/model_2.dart';
import 'package:test/test.dart';

void main() {
  group('Model1', () {
    test('fromJson', () {
      const json1 = {'boolean': true, 'integer': 1};

      final model1 = Model1.fromJson(json1);
      print('model1 $model1');

      expect(
        model1,
        Model1(
          (model) => model
            ..boolean = true
            ..integer = 1,
        ),
      );
    });
    test('toJson', () {
      final model1 = Model1((model) => model
        ..boolean = true
        ..integer = 1);
      final json = model1.toJson();
      print('json $json');
      expect(json, const {'boolean': true, 'integer': 1});
    });
  });

  group('Model2', () {
    test('fromJson', () {
      final json1 = {
        'char': 'a',
        'list': jsonEncode(const [
          {'boolean': true, 'integer': 1}
        ])
      };

      final model2 = Model2.fromJson(json1);
      print('model2 $model2');
      expect(model2, Model2((model) {
        model
          ..char = 'a'
          ..list = ListBuilder([
            Model1((model) => model
              ..boolean = true
              ..integer = 1),
          ]);
      }));
    });
    test('toJson', () {
      final model2 = Model2((model) {
        model
          ..char = 'a'
          ..list = ListBuilder([
            Model1((model) => model
              ..boolean = true
              ..integer = 1),
          ]);
      });
      final json = model2.toJson();
      print('json $json');
      expect(json, {
        'char': 'a',
        'list': jsonEncode(const [
          {'boolean': true, 'integer': 1}
        ])
      });
    });
  });
}
