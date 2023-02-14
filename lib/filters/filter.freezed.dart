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
mixin _$LocalFilter<T> {
  String get name => throw _privateConstructorUsedError;
  Iterable<Option<T>> get options => throw _privateConstructorUsedError;
  Set<T> get selected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalFilterCopyWith<T, LocalFilter<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalFilterCopyWith<T, $Res> {
  factory $LocalFilterCopyWith(
          LocalFilter<T> value, $Res Function(LocalFilter<T>) then) =
      _$LocalFilterCopyWithImpl<T, $Res, LocalFilter<T>>;
  @useResult
  $Res call({String name, Iterable<Option<T>> options, Set<T> selected});
}

/// @nodoc
class _$LocalFilterCopyWithImpl<T, $Res, $Val extends LocalFilter<T>>
    implements $LocalFilterCopyWith<T, $Res> {
  _$LocalFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? options = null,
    Object? selected = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Iterable<Option<T>>,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Set<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocalFilterCopyWith<T, $Res>
    implements $LocalFilterCopyWith<T, $Res> {
  factory _$$_LocalFilterCopyWith(
          _$_LocalFilter<T> value, $Res Function(_$_LocalFilter<T>) then) =
      __$$_LocalFilterCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String name, Iterable<Option<T>> options, Set<T> selected});
}

/// @nodoc
class __$$_LocalFilterCopyWithImpl<T, $Res>
    extends _$LocalFilterCopyWithImpl<T, $Res, _$_LocalFilter<T>>
    implements _$$_LocalFilterCopyWith<T, $Res> {
  __$$_LocalFilterCopyWithImpl(
      _$_LocalFilter<T> _value, $Res Function(_$_LocalFilter<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? options = null,
    Object? selected = null,
  }) {
    return _then(_$_LocalFilter<T>(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Iterable<Option<T>>,
      selected: null == selected
          ? _value._selected
          : selected // ignore: cast_nullable_to_non_nullable
              as Set<T>,
    ));
  }
}

/// @nodoc

class _$_LocalFilter<T> extends _LocalFilter<T> {
  const _$_LocalFilter(
      {required this.name,
      required this.options,
      required final Set<T> selected})
      : _selected = selected,
        super._();

  @override
  final String name;
  @override
  final Iterable<Option<T>> options;
  final Set<T> _selected;
  @override
  Set<T> get selected {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selected);
  }

  @override
  String toString() {
    return 'LocalFilter<$T>(name: $name, options: $options, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalFilter<T> &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            const DeepCollectionEquality().equals(other._selected, _selected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(options),
      const DeepCollectionEquality().hash(_selected));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalFilterCopyWith<T, _$_LocalFilter<T>> get copyWith =>
      __$$_LocalFilterCopyWithImpl<T, _$_LocalFilter<T>>(this, _$identity);
}

abstract class _LocalFilter<T> extends LocalFilter<T> {
  const factory _LocalFilter(
      {required final String name,
      required final Iterable<Option<T>> options,
      required final Set<T> selected}) = _$_LocalFilter<T>;
  const _LocalFilter._() : super._();

  @override
  String get name;
  @override
  Iterable<Option<T>> get options;
  @override
  Set<T> get selected;
  @override
  @JsonKey(ignore: true)
  _$$_LocalFilterCopyWith<T, _$_LocalFilter<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GlobalFilter<T> {
  String get name => throw _privateConstructorUsedError;
  Iterable<Option<T>> get options => throw _privateConstructorUsedError;
  StateController<Set<T>> get appliedFilterStateController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GlobalFilterCopyWith<T, GlobalFilter<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalFilterCopyWith<T, $Res> {
  factory $GlobalFilterCopyWith(
          GlobalFilter<T> value, $Res Function(GlobalFilter<T>) then) =
      _$GlobalFilterCopyWithImpl<T, $Res, GlobalFilter<T>>;
  @useResult
  $Res call(
      {String name,
      Iterable<Option<T>> options,
      StateController<Set<T>> appliedFilterStateController});
}

/// @nodoc
class _$GlobalFilterCopyWithImpl<T, $Res, $Val extends GlobalFilter<T>>
    implements $GlobalFilterCopyWith<T, $Res> {
  _$GlobalFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? options = null,
    Object? appliedFilterStateController = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Iterable<Option<T>>,
      appliedFilterStateController: null == appliedFilterStateController
          ? _value.appliedFilterStateController
          : appliedFilterStateController // ignore: cast_nullable_to_non_nullable
              as StateController<Set<T>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GlobalFilterCopyWith<T, $Res>
    implements $GlobalFilterCopyWith<T, $Res> {
  factory _$$_GlobalFilterCopyWith(
          _$_GlobalFilter<T> value, $Res Function(_$_GlobalFilter<T>) then) =
      __$$_GlobalFilterCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String name,
      Iterable<Option<T>> options,
      StateController<Set<T>> appliedFilterStateController});
}

/// @nodoc
class __$$_GlobalFilterCopyWithImpl<T, $Res>
    extends _$GlobalFilterCopyWithImpl<T, $Res, _$_GlobalFilter<T>>
    implements _$$_GlobalFilterCopyWith<T, $Res> {
  __$$_GlobalFilterCopyWithImpl(
      _$_GlobalFilter<T> _value, $Res Function(_$_GlobalFilter<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? options = null,
    Object? appliedFilterStateController = null,
  }) {
    return _then(_$_GlobalFilter<T>(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Iterable<Option<T>>,
      appliedFilterStateController: null == appliedFilterStateController
          ? _value.appliedFilterStateController
          : appliedFilterStateController // ignore: cast_nullable_to_non_nullable
              as StateController<Set<T>>,
    ));
  }
}

/// @nodoc

class _$_GlobalFilter<T> extends _GlobalFilter<T> {
  const _$_GlobalFilter(
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
    return 'GlobalFilter<$T>(name: $name, options: $options, appliedFilterStateController: $appliedFilterStateController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GlobalFilter<T> &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            (identical(other.appliedFilterStateController,
                    appliedFilterStateController) ||
                other.appliedFilterStateController ==
                    appliedFilterStateController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(options),
      appliedFilterStateController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GlobalFilterCopyWith<T, _$_GlobalFilter<T>> get copyWith =>
      __$$_GlobalFilterCopyWithImpl<T, _$_GlobalFilter<T>>(this, _$identity);
}

abstract class _GlobalFilter<T> extends GlobalFilter<T> {
  const factory _GlobalFilter(
      {required final String name,
      required final Iterable<Option<T>> options,
      required final StateController<Set<T>>
          appliedFilterStateController}) = _$_GlobalFilter<T>;
  const _GlobalFilter._() : super._();

  @override
  String get name;
  @override
  Iterable<Option<T>> get options;
  @override
  StateController<Set<T>> get appliedFilterStateController;
  @override
  @JsonKey(ignore: true)
  _$$_GlobalFilterCopyWith<T, _$_GlobalFilter<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
