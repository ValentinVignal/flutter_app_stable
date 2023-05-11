// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fragment.workspace.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GWorkspaceFragmentReq> _$gWorkspaceFragmentReqSerializer =
    new _$GWorkspaceFragmentReqSerializer();

class _$GWorkspaceFragmentReqSerializer
    implements StructuredSerializer<GWorkspaceFragmentReq> {
  @override
  final Iterable<Type> types = const [
    GWorkspaceFragmentReq,
    _$GWorkspaceFragmentReq
  ];
  @override
  final String wireName = 'GWorkspaceFragmentReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GWorkspaceFragmentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GWorkspaceFragmentVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i5.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GWorkspaceFragmentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GWorkspaceFragmentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GWorkspaceFragmentVars))!
              as _i3.GWorkspaceFragmentVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.DocumentNode))!
              as _i5.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ]))! as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GWorkspaceFragmentReq extends GWorkspaceFragmentReq {
  @override
  final _i3.GWorkspaceFragmentVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GWorkspaceFragmentReq(
          [void Function(GWorkspaceFragmentReqBuilder)? updates]) =>
      (new GWorkspaceFragmentReqBuilder()..update(updates))._build();

  _$GWorkspaceFragmentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, r'GWorkspaceFragmentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, r'GWorkspaceFragmentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, r'GWorkspaceFragmentReq', 'idFields');
  }

  @override
  GWorkspaceFragmentReq rebuild(
          void Function(GWorkspaceFragmentReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GWorkspaceFragmentReqBuilder toBuilder() =>
      new GWorkspaceFragmentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GWorkspaceFragmentReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vars.hashCode);
    _$hash = $jc(_$hash, document.hashCode);
    _$hash = $jc(_$hash, fragmentName.hashCode);
    _$hash = $jc(_$hash, idFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GWorkspaceFragmentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GWorkspaceFragmentReqBuilder
    implements Builder<GWorkspaceFragmentReq, GWorkspaceFragmentReqBuilder> {
  _$GWorkspaceFragmentReq? _$v;

  _i3.GWorkspaceFragmentVarsBuilder? _vars;
  _i3.GWorkspaceFragmentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GWorkspaceFragmentVarsBuilder();
  set vars(_i3.GWorkspaceFragmentVarsBuilder? vars) => _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GWorkspaceFragmentReqBuilder() {
    GWorkspaceFragmentReq._initializeBuilder(this);
  }

  GWorkspaceFragmentReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GWorkspaceFragmentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GWorkspaceFragmentReq;
  }

  @override
  void update(void Function(GWorkspaceFragmentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GWorkspaceFragmentReq build() => _build();

  _$GWorkspaceFragmentReq _build() {
    _$GWorkspaceFragmentReq _$result;
    try {
      _$result = _$v ??
          new _$GWorkspaceFragmentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, r'GWorkspaceFragmentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, r'GWorkspaceFragmentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GWorkspaceFragmentReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
