// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mutation.delete_user.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeleteUserVars> _$gDeleteUserVarsSerializer =
    new _$GDeleteUserVarsSerializer();

class _$GDeleteUserVarsSerializer
    implements StructuredSerializer<GDeleteUserVars> {
  @override
  final Iterable<Type> types = const [GDeleteUserVars, _$GDeleteUserVars];
  @override
  final String wireName = 'GDeleteUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GDeleteUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDeleteUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteUserVarsBuilder();

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

class _$GDeleteUserVars extends GDeleteUserVars {
  @override
  final String id;

  factory _$GDeleteUserVars([void Function(GDeleteUserVarsBuilder)? updates]) =>
      (new GDeleteUserVarsBuilder()..update(updates))._build();

  _$GDeleteUserVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GDeleteUserVars', 'id');
  }

  @override
  GDeleteUserVars rebuild(void Function(GDeleteUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteUserVarsBuilder toBuilder() =>
      new GDeleteUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteUserVars && id == other.id;
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
    return (newBuiltValueToStringHelper(r'GDeleteUserVars')..add('id', id))
        .toString();
  }
}

class GDeleteUserVarsBuilder
    implements Builder<GDeleteUserVars, GDeleteUserVarsBuilder> {
  _$GDeleteUserVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GDeleteUserVarsBuilder();

  GDeleteUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteUserVars;
  }

  @override
  void update(void Function(GDeleteUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeleteUserVars build() => _build();

  _$GDeleteUserVars _build() {
    final _$result = _$v ??
        new _$GDeleteUserVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GDeleteUserVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
