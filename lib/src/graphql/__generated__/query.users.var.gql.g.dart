// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.users.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUsersVars> _$gUsersVarsSerializer = new _$GUsersVarsSerializer();

class _$GUsersVarsSerializer implements StructuredSerializer<GUsersVars> {
  @override
  final Iterable<Type> types = const [GUsersVars, _$GUsersVars];
  @override
  final String wireName = 'GUsersVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUsersVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GUsersVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GUsersVarsBuilder().build();
  }
}

class _$GUsersVars extends GUsersVars {
  factory _$GUsersVars([void Function(GUsersVarsBuilder)? updates]) =>
      (new GUsersVarsBuilder()..update(updates))._build();

  _$GUsersVars._() : super._();

  @override
  GUsersVars rebuild(void Function(GUsersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUsersVarsBuilder toBuilder() => new GUsersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUsersVars;
  }

  @override
  int get hashCode {
    return 727671365;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GUsersVars').toString();
  }
}

class GUsersVarsBuilder implements Builder<GUsersVars, GUsersVarsBuilder> {
  _$GUsersVars? _$v;

  GUsersVarsBuilder();

  @override
  void replace(GUsersVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUsersVars;
  }

  @override
  void update(void Function(GUsersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUsersVars build() => _build();

  _$GUsersVars _build() {
    final _$result = _$v ?? new _$GUsersVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
