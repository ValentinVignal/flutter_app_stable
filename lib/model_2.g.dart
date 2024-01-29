// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_2.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$_serializers = (new Serializers().toBuilder()
      ..add(Model1.serializer)
      ..add(Model2.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Model1)]),
          () => new ListBuilder<Model1>()))
    .build();
Serializer<Model2> _$model2Serializer = new _$Model2Serializer();

class _$Model2Serializer implements StructuredSerializer<Model2> {
  @override
  final Iterable<Type> types = const [Model2, _$Model2];
  @override
  final String wireName = 'Model2';

  @override
  Iterable<Object?> serialize(Serializers serializers, Model2 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'char',
      serializers.serialize(object.char, specifiedType: const FullType(String)),
      'list',
      serializers.serialize(object.list,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Model1)])),
    ];

    return result;
  }

  @override
  Model2 deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Model2Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'char':
          result.char = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'list':
          result.list.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Model1)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Model2 extends Model2 {
  @override
  final String char;
  @override
  final BuiltList<Model1> list;

  factory _$Model2([void Function(Model2Builder)? updates]) =>
      (new Model2Builder()..update(updates))._build();

  _$Model2._({required this.char, required this.list}) : super._() {
    BuiltValueNullFieldError.checkNotNull(char, r'Model2', 'char');
    BuiltValueNullFieldError.checkNotNull(list, r'Model2', 'list');
  }

  @override
  Model2 rebuild(void Function(Model2Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Model2Builder toBuilder() => new Model2Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Model2 && char == other.char && list == other.list;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, char.hashCode);
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Model2')
          ..add('char', char)
          ..add('list', list))
        .toString();
  }
}

class Model2Builder implements Builder<Model2, Model2Builder> {
  _$Model2? _$v;

  String? _char;
  String? get char => _$this._char;
  set char(String? char) => _$this._char = char;

  ListBuilder<Model1>? _list;
  ListBuilder<Model1> get list => _$this._list ??= new ListBuilder<Model1>();
  set list(ListBuilder<Model1>? list) => _$this._list = list;

  Model2Builder();

  Model2Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _char = $v.char;
      _list = $v.list.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Model2 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Model2;
  }

  @override
  void update(void Function(Model2Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Model2 build() => _build();

  _$Model2 _build() {
    _$Model2 _$result;
    try {
      _$result = _$v ??
          new _$Model2._(
              char: BuiltValueNullFieldError.checkNotNull(
                  char, r'Model2', 'char'),
              list: list.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'list';
        list.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Model2', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
