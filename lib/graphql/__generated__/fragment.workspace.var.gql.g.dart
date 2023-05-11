// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fragment.workspace.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GWorkspaceFragmentVars> _$gWorkspaceFragmentVarsSerializer =
    new _$GWorkspaceFragmentVarsSerializer();

class _$GWorkspaceFragmentVarsSerializer
    implements StructuredSerializer<GWorkspaceFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GWorkspaceFragmentVars,
    _$GWorkspaceFragmentVars
  ];
  @override
  final String wireName = 'GWorkspaceFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GWorkspaceFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GWorkspaceFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GWorkspaceFragmentVarsBuilder().build();
  }
}

class _$GWorkspaceFragmentVars extends GWorkspaceFragmentVars {
  factory _$GWorkspaceFragmentVars(
          [void Function(GWorkspaceFragmentVarsBuilder)? updates]) =>
      (new GWorkspaceFragmentVarsBuilder()..update(updates))._build();

  _$GWorkspaceFragmentVars._() : super._();

  @override
  GWorkspaceFragmentVars rebuild(
          void Function(GWorkspaceFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GWorkspaceFragmentVarsBuilder toBuilder() =>
      new GWorkspaceFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GWorkspaceFragmentVars;
  }

  @override
  int get hashCode {
    return 175627177;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GWorkspaceFragmentVars').toString();
  }
}

class GWorkspaceFragmentVarsBuilder
    implements Builder<GWorkspaceFragmentVars, GWorkspaceFragmentVarsBuilder> {
  _$GWorkspaceFragmentVars? _$v;

  GWorkspaceFragmentVarsBuilder();

  @override
  void replace(GWorkspaceFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GWorkspaceFragmentVars;
  }

  @override
  void update(void Function(GWorkspaceFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GWorkspaceFragmentVars build() => _build();

  _$GWorkspaceFragmentVars _build() {
    final _$result = _$v ?? new _$GWorkspaceFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
