// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.polemon_1.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPokemon1Vars> _$gPokemon1VarsSerializer =
    new _$GPokemon1VarsSerializer();

class _$GPokemon1VarsSerializer implements StructuredSerializer<GPokemon1Vars> {
  @override
  final Iterable<Type> types = const [GPokemon1Vars, _$GPokemon1Vars];
  @override
  final String wireName = 'GPokemon1Vars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPokemon1Vars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GPokemon1Vars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPokemon1VarsBuilder();

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

class _$GPokemon1Vars extends GPokemon1Vars {
  @override
  final String id;

  factory _$GPokemon1Vars([void Function(GPokemon1VarsBuilder)? updates]) =>
      (new GPokemon1VarsBuilder()..update(updates))._build();

  _$GPokemon1Vars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GPokemon1Vars', 'id');
  }

  @override
  GPokemon1Vars rebuild(void Function(GPokemon1VarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemon1VarsBuilder toBuilder() => new GPokemon1VarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemon1Vars && id == other.id;
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
    return (newBuiltValueToStringHelper(r'GPokemon1Vars')..add('id', id))
        .toString();
  }
}

class GPokemon1VarsBuilder
    implements Builder<GPokemon1Vars, GPokemon1VarsBuilder> {
  _$GPokemon1Vars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GPokemon1VarsBuilder();

  GPokemon1VarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPokemon1Vars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemon1Vars;
  }

  @override
  void update(void Function(GPokemon1VarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemon1Vars build() => _build();

  _$GPokemon1Vars _build() {
    final _$result = _$v ??
        new _$GPokemon1Vars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GPokemon1Vars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
