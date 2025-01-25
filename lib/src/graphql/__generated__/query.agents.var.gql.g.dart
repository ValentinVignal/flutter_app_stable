// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.agents.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAgentsVars> _$gAgentsVarsSerializer = new _$GAgentsVarsSerializer();

class _$GAgentsVarsSerializer implements StructuredSerializer<GAgentsVars> {
  @override
  final Iterable<Type> types = const [GAgentsVars, _$GAgentsVars];
  @override
  final String wireName = 'GAgentsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAgentsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GAgentsVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GAgentsVarsBuilder().build();
  }
}

class _$GAgentsVars extends GAgentsVars {
  factory _$GAgentsVars([void Function(GAgentsVarsBuilder)? updates]) =>
      (new GAgentsVarsBuilder()..update(updates))._build();

  _$GAgentsVars._() : super._();

  @override
  GAgentsVars rebuild(void Function(GAgentsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAgentsVarsBuilder toBuilder() => new GAgentsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAgentsVars;
  }

  @override
  int get hashCode {
    return 639946403;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GAgentsVars').toString();
  }
}

class GAgentsVarsBuilder implements Builder<GAgentsVars, GAgentsVarsBuilder> {
  _$GAgentsVars? _$v;

  GAgentsVarsBuilder();

  @override
  void replace(GAgentsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAgentsVars;
  }

  @override
  void update(void Function(GAgentsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAgentsVars build() => _build();

  _$GAgentsVars _build() {
    final _$result = _$v ?? new _$GAgentsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
