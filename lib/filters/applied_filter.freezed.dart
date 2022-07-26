// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'applied_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppliedFilter<T> {
  String get name => throw _privateConstructorUsedError;
  Set<T> get selected => throw _privateConstructorUsedError;
  Iterable<Option<T>> get options => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppliedFilterCopyWith<T, AppliedFilter<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppliedFilterCopyWith<T, $Res> {
  factory $AppliedFilterCopyWith(
          AppliedFilter<T> value, $Res Function(AppliedFilter<T>) then) =
      _$AppliedFilterCopyWithImpl<T, $Res>;
  $Res call({String name, Set<T> selected, Iterable<Option<T>> options});
}

/// @nodoc
class _$AppliedFilterCopyWithImpl<T, $Res>
    implements $AppliedFilterCopyWith<T, $Res> {
  _$AppliedFilterCopyWithImpl(this._value, this._then);

  final AppliedFilter<T> _value;
  // ignore: unused_field
  final $Res Function(AppliedFilter<T>) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? selected = freezed,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Set<T>,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Iterable<Option<T>>,
    ));
  }
}

/// @nodoc
abstract class _$$_AppliedFilterCopyWith<T, $Res>
    implements $AppliedFilterCopyWith<T, $Res> {
  factory _$$_AppliedFilterCopyWith(
          _$_AppliedFilter<T> value, $Res Function(_$_AppliedFilter<T>) then) =
      __$$_AppliedFilterCopyWithImpl<T, $Res>;
  @override
  $Res call({String name, Set<T> selected, Iterable<Option<T>> options});
}

/// @nodoc
class __$$_AppliedFilterCopyWithImpl<T, $Res>
    extends _$AppliedFilterCopyWithImpl<T, $Res>
    implements _$$_AppliedFilterCopyWith<T, $Res> {
  __$$_AppliedFilterCopyWithImpl(
      _$_AppliedFilter<T> _value, $Res Function(_$_AppliedFilter<T>) _then)
      : super(_value, (v) => _then(v as _$_AppliedFilter<T>));

  @override
  _$_AppliedFilter<T> get _value => super._value as _$_AppliedFilter<T>;

  @override
  $Res call({
    Object? name = freezed,
    Object? selected = freezed,
    Object? options = freezed,
  }) {
    return _then(_$_AppliedFilter<T>(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      selected: selected == freezed
          ? _value._selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Set<T>,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Iterable<Option<T>>,
    ));
  }
}

/// @nodoc

class _$_AppliedFilter<T> extends _AppliedFilter<T> {
  const _$_AppliedFilter(
      {required this.name,
      required final Set<T> selected,
      required this.options})
      : _selected = selected,
        super._();

  @override
  final String name;
  final Set<T> _selected;
  @override
  Set<T> get selected {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selected);
  }

  @override
  final Iterable<Option<T>> options;

  @override
  String toString() {
    return 'AppliedFilter<$T>(name: $name, selected: $selected, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppliedFilter<T> &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._selected, _selected) &&
            const DeepCollectionEquality().equals(other.options, options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_selected),
      const DeepCollectionEquality().hash(options));

  @JsonKey(ignore: true)
  @override
  _$$_AppliedFilterCopyWith<T, _$_AppliedFilter<T>> get copyWith =>
      __$$_AppliedFilterCopyWithImpl<T, _$_AppliedFilter<T>>(this, _$identity);
}

abstract class _AppliedFilter<T> extends AppliedFilter<T> {
  const factory _AppliedFilter(
      {required final String name,
      required final Set<T> selected,
      required final Iterable<Option<T>> options}) = _$_AppliedFilter<T>;
  const _AppliedFilter._() : super._();

  @override
  String get name;
  @override
  Set<T> get selected;
  @override
  Iterable<Option<T>> get options;
  @override
  @JsonKey(ignore: true)
  _$$_AppliedFilterCopyWith<T, _$_AppliedFilter<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
