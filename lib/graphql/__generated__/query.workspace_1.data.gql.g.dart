// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.workspace_1.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GWorkspace1Data> _$gWorkspace1DataSerializer =
    new _$GWorkspace1DataSerializer();
Serializer<GWorkspace1Data_workspace> _$gWorkspace1DataWorkspaceSerializer =
    new _$GWorkspace1Data_workspaceSerializer();

class _$GWorkspace1DataSerializer
    implements StructuredSerializer<GWorkspace1Data> {
  @override
  final Iterable<Type> types = const [GWorkspace1Data, _$GWorkspace1Data];
  @override
  final String wireName = 'GWorkspace1Data';

  @override
  Iterable<Object?> serialize(Serializers serializers, GWorkspace1Data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'workspace',
      serializers.serialize(object.workspace,
          specifiedType: const FullType(GWorkspace1Data_workspace)),
    ];

    return result;
  }

  @override
  GWorkspace1Data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GWorkspace1DataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'workspace':
          result.workspace.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GWorkspace1Data_workspace))!
              as GWorkspace1Data_workspace);
          break;
      }
    }

    return result.build();
  }
}

class _$GWorkspace1Data_workspaceSerializer
    implements StructuredSerializer<GWorkspace1Data_workspace> {
  @override
  final Iterable<Type> types = const [
    GWorkspace1Data_workspace,
    _$GWorkspace1Data_workspace
  ];
  @override
  final String wireName = 'GWorkspace1Data_workspace';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GWorkspace1Data_workspace object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description1',
      serializers.serialize(object.description1,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GWorkspace1Data_workspace deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GWorkspace1Data_workspaceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description1':
          result.description1 = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GWorkspace1Data extends GWorkspace1Data {
  @override
  final String G__typename;
  @override
  final GWorkspace1Data_workspace workspace;

  factory _$GWorkspace1Data([void Function(GWorkspace1DataBuilder)? updates]) =>
      (new GWorkspace1DataBuilder()..update(updates))._build();

  _$GWorkspace1Data._({required this.G__typename, required this.workspace})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GWorkspace1Data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        workspace, r'GWorkspace1Data', 'workspace');
  }

  @override
  GWorkspace1Data rebuild(void Function(GWorkspace1DataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GWorkspace1DataBuilder toBuilder() =>
      new GWorkspace1DataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GWorkspace1Data &&
        G__typename == other.G__typename &&
        workspace == other.workspace;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, workspace.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GWorkspace1Data')
          ..add('G__typename', G__typename)
          ..add('workspace', workspace))
        .toString();
  }
}

class GWorkspace1DataBuilder
    implements Builder<GWorkspace1Data, GWorkspace1DataBuilder> {
  _$GWorkspace1Data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GWorkspace1Data_workspaceBuilder? _workspace;
  GWorkspace1Data_workspaceBuilder get workspace =>
      _$this._workspace ??= new GWorkspace1Data_workspaceBuilder();
  set workspace(GWorkspace1Data_workspaceBuilder? workspace) =>
      _$this._workspace = workspace;

  GWorkspace1DataBuilder() {
    GWorkspace1Data._initializeBuilder(this);
  }

  GWorkspace1DataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _workspace = $v.workspace.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GWorkspace1Data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GWorkspace1Data;
  }

  @override
  void update(void Function(GWorkspace1DataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GWorkspace1Data build() => _build();

  _$GWorkspace1Data _build() {
    _$GWorkspace1Data _$result;
    try {
      _$result = _$v ??
          new _$GWorkspace1Data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GWorkspace1Data', 'G__typename'),
              workspace: workspace.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'workspace';
        workspace.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GWorkspace1Data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GWorkspace1Data_workspace extends GWorkspace1Data_workspace {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String description1;

  factory _$GWorkspace1Data_workspace(
          [void Function(GWorkspace1Data_workspaceBuilder)? updates]) =>
      (new GWorkspace1Data_workspaceBuilder()..update(updates))._build();

  _$GWorkspace1Data_workspace._(
      {required this.G__typename,
      required this.name,
      required this.description1})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GWorkspace1Data_workspace', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GWorkspace1Data_workspace', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description1, r'GWorkspace1Data_workspace', 'description1');
  }

  @override
  GWorkspace1Data_workspace rebuild(
          void Function(GWorkspace1Data_workspaceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GWorkspace1Data_workspaceBuilder toBuilder() =>
      new GWorkspace1Data_workspaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GWorkspace1Data_workspace &&
        G__typename == other.G__typename &&
        name == other.name &&
        description1 == other.description1;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description1.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GWorkspace1Data_workspace')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('description1', description1))
        .toString();
  }
}

class GWorkspace1Data_workspaceBuilder
    implements
        Builder<GWorkspace1Data_workspace, GWorkspace1Data_workspaceBuilder> {
  _$GWorkspace1Data_workspace? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description1;
  String? get description1 => _$this._description1;
  set description1(String? description1) => _$this._description1 = description1;

  GWorkspace1Data_workspaceBuilder() {
    GWorkspace1Data_workspace._initializeBuilder(this);
  }

  GWorkspace1Data_workspaceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _description1 = $v.description1;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GWorkspace1Data_workspace other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GWorkspace1Data_workspace;
  }

  @override
  void update(void Function(GWorkspace1Data_workspaceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GWorkspace1Data_workspace build() => _build();

  _$GWorkspace1Data_workspace _build() {
    final _$result = _$v ??
        new _$GWorkspace1Data_workspace._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GWorkspace1Data_workspace', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GWorkspace1Data_workspace', 'name'),
            description1: BuiltValueNullFieldError.checkNotNull(
                description1, r'GWorkspace1Data_workspace', 'description1'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
