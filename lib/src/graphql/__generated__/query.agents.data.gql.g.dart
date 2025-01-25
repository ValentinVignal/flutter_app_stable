// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.agents.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAgentsData> _$gAgentsDataSerializer = new _$GAgentsDataSerializer();
Serializer<GAgentsData_agents> _$gAgentsDataAgentsSerializer =
    new _$GAgentsData_agentsSerializer();

class _$GAgentsDataSerializer implements StructuredSerializer<GAgentsData> {
  @override
  final Iterable<Type> types = const [GAgentsData, _$GAgentsData];
  @override
  final String wireName = 'GAgentsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAgentsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'agents',
      serializers.serialize(object.agents,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GAgentsData_agents)])),
    ];

    return result;
  }

  @override
  GAgentsData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAgentsDataBuilder();

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
        case 'agents':
          result.agents.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GAgentsData_agents)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAgentsData_agentsSerializer
    implements StructuredSerializer<GAgentsData_agents> {
  @override
  final Iterable<Type> types = const [GAgentsData_agents, _$GAgentsData_agents];
  @override
  final String wireName = 'GAgentsData_agents';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAgentsData_agents object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GAgentsData_agents deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAgentsData_agentsBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GAgentsData extends GAgentsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GAgentsData_agents> agents;

  factory _$GAgentsData([void Function(GAgentsDataBuilder)? updates]) =>
      (new GAgentsDataBuilder()..update(updates))._build();

  _$GAgentsData._({required this.G__typename, required this.agents})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAgentsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(agents, r'GAgentsData', 'agents');
  }

  @override
  GAgentsData rebuild(void Function(GAgentsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAgentsDataBuilder toBuilder() => new GAgentsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAgentsData &&
        G__typename == other.G__typename &&
        agents == other.agents;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, agents.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAgentsData')
          ..add('G__typename', G__typename)
          ..add('agents', agents))
        .toString();
  }
}

class GAgentsDataBuilder implements Builder<GAgentsData, GAgentsDataBuilder> {
  _$GAgentsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GAgentsData_agents>? _agents;
  ListBuilder<GAgentsData_agents> get agents =>
      _$this._agents ??= new ListBuilder<GAgentsData_agents>();
  set agents(ListBuilder<GAgentsData_agents>? agents) =>
      _$this._agents = agents;

  GAgentsDataBuilder() {
    GAgentsData._initializeBuilder(this);
  }

  GAgentsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _agents = $v.agents.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAgentsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAgentsData;
  }

  @override
  void update(void Function(GAgentsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAgentsData build() => _build();

  _$GAgentsData _build() {
    _$GAgentsData _$result;
    try {
      _$result = _$v ??
          new _$GAgentsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GAgentsData', 'G__typename'),
              agents: agents.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'agents';
        agents.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GAgentsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAgentsData_agents extends GAgentsData_agents {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String email;

  factory _$GAgentsData_agents(
          [void Function(GAgentsData_agentsBuilder)? updates]) =>
      (new GAgentsData_agentsBuilder()..update(updates))._build();

  _$GAgentsData_agents._(
      {required this.G__typename,
      required this.id,
      required this.name,
      required this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GAgentsData_agents', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GAgentsData_agents', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'GAgentsData_agents', 'name');
    BuiltValueNullFieldError.checkNotNull(
        email, r'GAgentsData_agents', 'email');
  }

  @override
  GAgentsData_agents rebuild(
          void Function(GAgentsData_agentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAgentsData_agentsBuilder toBuilder() =>
      new GAgentsData_agentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAgentsData_agents &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GAgentsData_agents')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('email', email))
        .toString();
  }
}

class GAgentsData_agentsBuilder
    implements Builder<GAgentsData_agents, GAgentsData_agentsBuilder> {
  _$GAgentsData_agents? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GAgentsData_agentsBuilder() {
    GAgentsData_agents._initializeBuilder(this);
  }

  GAgentsData_agentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAgentsData_agents other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAgentsData_agents;
  }

  @override
  void update(void Function(GAgentsData_agentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GAgentsData_agents build() => _build();

  _$GAgentsData_agents _build() {
    final _$result = _$v ??
        new _$GAgentsData_agents._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GAgentsData_agents', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GAgentsData_agents', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GAgentsData_agents', 'name'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'GAgentsData_agents', 'email'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
