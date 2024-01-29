// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_1.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$_serializers =
    (new Serializers().toBuilder()..add(Model1.serializer)).build();
Serializer<Model1> _$model1Serializer = new _$Model1Serializer();

class _$Model1Serializer implements StructuredSerializer<Model1> {
  @override
  final Iterable<Type> types = const [Model1, _$Model1];
  @override
  final String wireName = 'Model1';

  @override
  Iterable<Object?> serialize(Serializers serializers, Model1 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'boolean',
      serializers.serialize(object.boolean,
          specifiedType: const FullType(bool)),
      'integer',
      serializers.serialize(object.integer, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Model1 deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Model1Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'boolean':
          result.boolean = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'integer':
          result.integer = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Model1 extends Model1 {
  @override
  final bool boolean;
  @override
  final int integer;

  factory _$Model1([void Function(Model1Builder)? updates]) =>
      (new Model1Builder()..update(updates))._build();

  _$Model1._({required this.boolean, required this.integer}) : super._() {
    BuiltValueNullFieldError.checkNotNull(boolean, r'Model1', 'boolean');
    BuiltValueNullFieldError.checkNotNull(integer, r'Model1', 'integer');
  }

  @override
  Model1 rebuild(void Function(Model1Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Model1Builder toBuilder() => new Model1Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Model1 &&
        boolean == other.boolean &&
        integer == other.integer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, boolean.hashCode);
    _$hash = $jc(_$hash, integer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Model1')
          ..add('boolean', boolean)
          ..add('integer', integer))
        .toString();
  }
}

class Model1Builder implements Builder<Model1, Model1Builder> {
  _$Model1? _$v;

  bool? _boolean;
  bool? get boolean => _$this._boolean;
  set boolean(bool? boolean) => _$this._boolean = boolean;

  int? _integer;
  int? get integer => _$this._integer;
  set integer(int? integer) => _$this._integer = integer;

  Model1Builder();

  Model1Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _boolean = $v.boolean;
      _integer = $v.integer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Model1 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Model1;
  }

  @override
  void update(void Function(Model1Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Model1 build() => _build();

  _$Model1 _build() {
    final _$result = _$v ??
        new _$Model1._(
            boolean: BuiltValueNullFieldError.checkNotNull(
                boolean, r'Model1', 'boolean'),
            integer: BuiltValueNullFieldError.checkNotNull(
                integer, r'Model1', 'integer'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
