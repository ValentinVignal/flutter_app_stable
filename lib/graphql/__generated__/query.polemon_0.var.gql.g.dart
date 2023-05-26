// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.polemon_0.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPokemon0Vars> _$gPokemon0VarsSerializer =
    new _$GPokemon0VarsSerializer();

class _$GPokemon0VarsSerializer implements StructuredSerializer<GPokemon0Vars> {
  @override
  final Iterable<Type> types = const [GPokemon0Vars, _$GPokemon0Vars];
  @override
  final String wireName = 'GPokemon0Vars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPokemon0Vars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GPokemon0Vars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPokemon0VarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GPokemon0Vars extends GPokemon0Vars {
  @override
  final String id;

  factory _$GPokemon0Vars([void Function(GPokemon0VarsBuilder)? updates]) =>
      (new GPokemon0VarsBuilder()..update(updates))._build();

  _$GPokemon0Vars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GPokemon0Vars', 'id');
  }

  @override
  GPokemon0Vars rebuild(void Function(GPokemon0VarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemon0VarsBuilder toBuilder() => new GPokemon0VarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemon0Vars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPokemon0Vars')..add('id', id))
        .toString();
  }
}

class GPokemon0VarsBuilder
    implements Builder<GPokemon0Vars, GPokemon0VarsBuilder> {
  _$GPokemon0Vars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GPokemon0VarsBuilder();

  GPokemon0VarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPokemon0Vars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemon0Vars;
  }

  @override
  void update(void Function(GPokemon0VarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemon0Vars build() => _build();

  _$GPokemon0Vars _build() {
    final _$result = _$v ??
        new _$GPokemon0Vars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GPokemon0Vars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
