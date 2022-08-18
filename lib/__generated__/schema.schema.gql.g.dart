// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPokemonInput> _$gPokemonInputSerializer =
    new _$GPokemonInputSerializer();

class _$GPokemonInputSerializer implements StructuredSerializer<GPokemonInput> {
  @override
  final Iterable<Type> types = const [GPokemonInput, _$GPokemonInput];
  @override
  final String wireName = 'GPokemonInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPokemonInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GPokemonInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPokemonInputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GPokemonInput extends GPokemonInput {
  @override
  final String name;

  factory _$GPokemonInput([void Function(GPokemonInputBuilder)? updates]) =>
      (new GPokemonInputBuilder()..update(updates))._build();

  _$GPokemonInput._({required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'GPokemonInput', 'name');
  }

  @override
  GPokemonInput rebuild(void Function(GPokemonInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPokemonInputBuilder toBuilder() => new GPokemonInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPokemonInput && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPokemonInput')..add('name', name))
        .toString();
  }
}

class GPokemonInputBuilder
    implements Builder<GPokemonInput, GPokemonInputBuilder> {
  _$GPokemonInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GPokemonInputBuilder();

  GPokemonInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPokemonInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPokemonInput;
  }

  @override
  void update(void Function(GPokemonInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPokemonInput build() => _build();

  _$GPokemonInput _build() {
    final _$result = _$v ??
        new _$GPokemonInput._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'GPokemonInput', 'name'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
