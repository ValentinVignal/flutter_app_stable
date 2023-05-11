// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.workspace_2.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GWorkspace2Data> _$gWorkspace2DataSerializer =
    new _$GWorkspace2DataSerializer();
Serializer<GWorkspace2Data_workspace> _$gWorkspace2DataWorkspaceSerializer =
    new _$GWorkspace2Data_workspaceSerializer();

class _$GWorkspace2DataSerializer
    implements StructuredSerializer<GWorkspace2Data> {
  @override
  final Iterable<Type> types = const [GWorkspace2Data, _$GWorkspace2Data];
  @override
  final String wireName = 'GWorkspace2Data';

  @override
  Iterable<Object?> serialize(Serializers serializers, GWorkspace2Data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'workspace',
      serializers.serialize(object.workspace,
          specifiedType: const FullType(GWorkspace2Data_workspace)),
    ];

    return result;
  }

  @override
  GWorkspace2Data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GWorkspace2DataBuilder();

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
                  specifiedType: const FullType(GWorkspace2Data_workspace))!
              as GWorkspace2Data_workspace);
          break;
      }
    }

    return result.build();
  }
}

class _$GWorkspace2Data_workspaceSerializer
    implements StructuredSerializer<GWorkspace2Data_workspace> {
  @override
  final Iterable<Type> types = const [
    GWorkspace2Data_workspace,
    _$GWorkspace2Data_workspace
  ];
  @override
  final String wireName = 'GWorkspace2Data_workspace';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GWorkspace2Data_workspace object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description2',
      serializers.serialize(object.description2,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GWorkspace2Data_workspace deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GWorkspace2Data_workspaceBuilder();

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
        case 'description2':
          result.description2 = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GWorkspace2Data extends GWorkspace2Data {
  @override
  final String G__typename;
  @override
  final GWorkspace2Data_workspace workspace;

  factory _$GWorkspace2Data([void Function(GWorkspace2DataBuilder)? updates]) =>
      (new GWorkspace2DataBuilder()..update(updates))._build();

  _$GWorkspace2Data._({required this.G__typename, required this.workspace})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GWorkspace2Data', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        workspace, r'GWorkspace2Data', 'workspace');
  }

  @override
  GWorkspace2Data rebuild(void Function(GWorkspace2DataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GWorkspace2DataBuilder toBuilder() =>
      new GWorkspace2DataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GWorkspace2Data &&
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
    return (newBuiltValueToStringHelper(r'GWorkspace2Data')
          ..add('G__typename', G__typename)
          ..add('workspace', workspace))
        .toString();
  }
}

class GWorkspace2DataBuilder
    implements Builder<GWorkspace2Data, GWorkspace2DataBuilder> {
  _$GWorkspace2Data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GWorkspace2Data_workspaceBuilder? _workspace;
  GWorkspace2Data_workspaceBuilder get workspace =>
      _$this._workspace ??= new GWorkspace2Data_workspaceBuilder();
  set workspace(GWorkspace2Data_workspaceBuilder? workspace) =>
      _$this._workspace = workspace;

  GWorkspace2DataBuilder() {
    GWorkspace2Data._initializeBuilder(this);
  }

  GWorkspace2DataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _workspace = $v.workspace.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GWorkspace2Data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GWorkspace2Data;
  }

  @override
  void update(void Function(GWorkspace2DataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GWorkspace2Data build() => _build();

  _$GWorkspace2Data _build() {
    _$GWorkspace2Data _$result;
    try {
      _$result = _$v ??
          new _$GWorkspace2Data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GWorkspace2Data', 'G__typename'),
              workspace: workspace.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'workspace';
        workspace.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GWorkspace2Data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GWorkspace2Data_workspace extends GWorkspace2Data_workspace {
  @override
  final String G__typename;
  @override
  final String name;
  @override
  final String description2;

  factory _$GWorkspace2Data_workspace(
          [void Function(GWorkspace2Data_workspaceBuilder)? updates]) =>
      (new GWorkspace2Data_workspaceBuilder()..update(updates))._build();

  _$GWorkspace2Data_workspace._(
      {required this.G__typename,
      required this.name,
      required this.description2})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GWorkspace2Data_workspace', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        name, r'GWorkspace2Data_workspace', 'name');
    BuiltValueNullFieldError.checkNotNull(
        description2, r'GWorkspace2Data_workspace', 'description2');
  }

  @override
  GWorkspace2Data_workspace rebuild(
          void Function(GWorkspace2Data_workspaceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GWorkspace2Data_workspaceBuilder toBuilder() =>
      new GWorkspace2Data_workspaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GWorkspace2Data_workspace &&
        G__typename == other.G__typename &&
        name == other.name &&
        description2 == other.description2;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description2.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GWorkspace2Data_workspace')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('description2', description2))
        .toString();
  }
}

class GWorkspace2Data_workspaceBuilder
    implements
        Builder<GWorkspace2Data_workspace, GWorkspace2Data_workspaceBuilder> {
  _$GWorkspace2Data_workspace? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description2;
  String? get description2 => _$this._description2;
  set description2(String? description2) => _$this._description2 = description2;

  GWorkspace2Data_workspaceBuilder() {
    GWorkspace2Data_workspace._initializeBuilder(this);
  }

  GWorkspace2Data_workspaceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _description2 = $v.description2;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GWorkspace2Data_workspace other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GWorkspace2Data_workspace;
  }

  @override
  void update(void Function(GWorkspace2Data_workspaceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GWorkspace2Data_workspace build() => _build();

  _$GWorkspace2Data_workspace _build() {
    final _$result = _$v ??
        new _$GWorkspace2Data_workspace._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GWorkspace2Data_workspace', 'G__typename'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GWorkspace2Data_workspace', 'name'),
            description2: BuiltValueNullFieldError.checkNotNull(
                description2, r'GWorkspace2Data_workspace', 'description2'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
