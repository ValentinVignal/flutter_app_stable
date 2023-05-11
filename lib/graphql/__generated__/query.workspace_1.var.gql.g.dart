// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.workspace_1.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GWorkspace1Vars> _$gWorkspace1VarsSerializer =
    new _$GWorkspace1VarsSerializer();

class _$GWorkspace1VarsSerializer
    implements StructuredSerializer<GWorkspace1Vars> {
  @override
  final Iterable<Type> types = const [GWorkspace1Vars, _$GWorkspace1Vars];
  @override
  final String wireName = 'GWorkspace1Vars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GWorkspace1Vars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GWorkspace1Vars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GWorkspace1VarsBuilder().build();
  }
}

class _$GWorkspace1Vars extends GWorkspace1Vars {
  factory _$GWorkspace1Vars([void Function(GWorkspace1VarsBuilder)? updates]) =>
      (new GWorkspace1VarsBuilder()..update(updates))._build();

  _$GWorkspace1Vars._() : super._();

  @override
  GWorkspace1Vars rebuild(void Function(GWorkspace1VarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GWorkspace1VarsBuilder toBuilder() =>
      new GWorkspace1VarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GWorkspace1Vars;
  }

  @override
  int get hashCode {
    return 1015937261;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GWorkspace1Vars').toString();
  }
}

class GWorkspace1VarsBuilder
    implements Builder<GWorkspace1Vars, GWorkspace1VarsBuilder> {
  _$GWorkspace1Vars? _$v;

  GWorkspace1VarsBuilder();

  @override
  void replace(GWorkspace1Vars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GWorkspace1Vars;
  }

  @override
  void update(void Function(GWorkspace1VarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GWorkspace1Vars build() => _build();

  _$GWorkspace1Vars _build() {
    final _$result = _$v ?? new _$GWorkspace1Vars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
