// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.workspace_2.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GWorkspace2Vars> _$gWorkspace2VarsSerializer =
    new _$GWorkspace2VarsSerializer();

class _$GWorkspace2VarsSerializer
    implements StructuredSerializer<GWorkspace2Vars> {
  @override
  final Iterable<Type> types = const [GWorkspace2Vars, _$GWorkspace2Vars];
  @override
  final String wireName = 'GWorkspace2Vars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GWorkspace2Vars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GWorkspace2Vars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GWorkspace2VarsBuilder().build();
  }
}

class _$GWorkspace2Vars extends GWorkspace2Vars {
  factory _$GWorkspace2Vars([void Function(GWorkspace2VarsBuilder)? updates]) =>
      (new GWorkspace2VarsBuilder()..update(updates))._build();

  _$GWorkspace2Vars._() : super._();

  @override
  GWorkspace2Vars rebuild(void Function(GWorkspace2VarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GWorkspace2VarsBuilder toBuilder() =>
      new GWorkspace2VarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GWorkspace2Vars;
  }

  @override
  int get hashCode {
    return 244472103;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GWorkspace2Vars').toString();
  }
}

class GWorkspace2VarsBuilder
    implements Builder<GWorkspace2Vars, GWorkspace2VarsBuilder> {
  _$GWorkspace2Vars? _$v;

  GWorkspace2VarsBuilder();

  @override
  void replace(GWorkspace2Vars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GWorkspace2Vars;
  }

  @override
  void update(void Function(GWorkspace2VarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GWorkspace2Vars build() => _build();

  _$GWorkspace2Vars _build() {
    final _$result = _$v ?? new _$GWorkspace2Vars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
