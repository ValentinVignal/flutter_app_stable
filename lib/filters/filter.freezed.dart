// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Filter<T> {
  String get name => throw _privateConstructorUsedError;
  Iterable<Option<T>> get options => throw _privateConstructorUsedError;
  StateController<Set<T>> get appliedFilterStateController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterCopyWith<T, Filter<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCopyWith<T, $Res> {
  factory $FilterCopyWith(Filter<T> value, $Res Function(Filter<T>) then) =
      _$FilterCopyWithImpl<T, $Res>;
  $Res call(
      {String name,
      Iterable<Option<T>> options,
      StateController<Set<T>> appliedFilterStateController});
}

/// @nodoc
class _$FilterCopyWithImpl<T, $Res> implements $FilterCopyWith<T, $Res> {
  _$FilterCopyWithImpl(this._value, this._then);

  final Filter<T> _value;
  // ignore: unused_field
  final $Res Function(Filter<T>) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? options = freezed,
    Object? appliedFilterStateController = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Iterable<Option<T>>,
      appliedFilterStateController: appliedFilterStateController == freezed
          ? _value.appliedFilterStateController
          : appliedFilterStateController // ignore: cast_nullable_to_non_nullable
              as StateController<Set<T>>,
    ));
  }
}

/// @nodoc
abstract class _$$_FilterCopyWith<T, $Res> implements $FilterCopyWith<T, $Res> {
  factory _$$_FilterCopyWith(
          _$_Filter<T> value, $Res Function(_$_Filter<T>) then) =
      __$$_FilterCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {String name,
      Iterable<Option<T>> options,
      StateController<Set<T>> appliedFilterStateController});
}

/// @nodoc
class __$$_FilterCopyWithImpl<T, $Res> extends _$FilterCopyWithImpl<T, $Res>
    implements _$$_FilterCopyWith<T, $Res> {
  __$$_FilterCopyWithImpl(
      _$_Filter<T> _value, $Res Function(_$_Filter<T>) _then)
      : super(_value, (v) => _then(v as _$_Filter<T>));

  @override
  _$_Filter<T> get _value => super._value as _$_Filter<T>;

  @override
  $Res call({
    Object? name = freezed,
    Object? options = freezed,
    Object? appliedFilterStateController = freezed,
  }) {
    return _then(_$_Filter<T>(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Iterable<Option<T>>,
      appliedFilterStateController: appliedFilterStateController == freezed
          ? _value.appliedFilterStateController
          : appliedFilterStateController // ignore: cast_nullable_to_non_nullable
              as StateController<Set<T>>,
    ));
  }
}

/// @nodoc

class _$_Filter<T> extends _Filter<T> {
  const _$_Filter(
      {required this.name,
      required this.options,
      required this.appliedFilterStateController})
      : super._();

  @override
  final String name;
  @override
  final Iterable<Option<T>> options;
  @override
  final StateController<Set<T>> appliedFilterStateController;

  @override
  String toString() {
    return 'Filter<$T>(name: $name, options: $options, appliedFilterStateController: $appliedFilterStateController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Filter<T> &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            const DeepCollectionEquality().equals(
                other.appliedFilterStateController,
                appliedFilterStateController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(options),
      const DeepCollectionEquality().hash(appliedFilterStateController));

  @JsonKey(ignore: true)
  @override
  _$$_FilterCopyWith<T, _$_Filter<T>> get copyWith =>
      __$$_FilterCopyWithImpl<T, _$_Filter<T>>(this, _$identity);
}

abstract class _Filter<T> extends Filter<T> {
  const factory _Filter(
      {required final String name,
      required final Iterable<Option<T>> options,
      required final StateController<Set<T>>
          appliedFilterStateController}) = _$_Filter<T>;
  const _Filter._() : super._();

  @override
  String get name;
  @override
  Iterable<Option<T>> get options;
  @override
  StateController<Set<T>> get appliedFilterStateController;
  @override
  @JsonKey(ignore: true)
  _$$_FilterCopyWith<T, _$_Filter<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
