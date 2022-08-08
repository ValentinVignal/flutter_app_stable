// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectsFiltersParameters _$ProjectsFiltersParametersFromJson(
    Map<String, dynamic> json) {
  return _ProjectsFiltersParameters.fromJson(json);
}

/// @nodoc
mixin _$ProjectsFiltersParameters {
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectsFiltersParametersCopyWith<ProjectsFiltersParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectsFiltersParametersCopyWith<$Res> {
  factory $ProjectsFiltersParametersCopyWith(ProjectsFiltersParameters value,
          $Res Function(ProjectsFiltersParameters) then) =
      _$ProjectsFiltersParametersCopyWithImpl<$Res>;
  $Res call({String? status});
}

/// @nodoc
class _$ProjectsFiltersParametersCopyWithImpl<$Res>
    implements $ProjectsFiltersParametersCopyWith<$Res> {
  _$ProjectsFiltersParametersCopyWithImpl(this._value, this._then);

  final ProjectsFiltersParameters _value;
  // ignore: unused_field
  final $Res Function(ProjectsFiltersParameters) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProjectsFiltersParametersCopyWith<$Res>
    implements $ProjectsFiltersParametersCopyWith<$Res> {
  factory _$$_ProjectsFiltersParametersCopyWith(
          _$_ProjectsFiltersParameters value,
          $Res Function(_$_ProjectsFiltersParameters) then) =
      __$$_ProjectsFiltersParametersCopyWithImpl<$Res>;
  @override
  $Res call({String? status});
}

/// @nodoc
class __$$_ProjectsFiltersParametersCopyWithImpl<$Res>
    extends _$ProjectsFiltersParametersCopyWithImpl<$Res>
    implements _$$_ProjectsFiltersParametersCopyWith<$Res> {
  __$$_ProjectsFiltersParametersCopyWithImpl(
      _$_ProjectsFiltersParameters _value,
      $Res Function(_$_ProjectsFiltersParameters) _then)
      : super(_value, (v) => _then(v as _$_ProjectsFiltersParameters));

  @override
  _$_ProjectsFiltersParameters get _value =>
      super._value as _$_ProjectsFiltersParameters;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$_ProjectsFiltersParameters(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectsFiltersParameters extends _ProjectsFiltersParameters {
  const _$_ProjectsFiltersParameters({this.status}) : super._();

  factory _$_ProjectsFiltersParameters.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectsFiltersParametersFromJson(json);

  @override
  final String? status;

  @override
  String toString() {
    return 'ProjectsFiltersParameters(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectsFiltersParameters &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_ProjectsFiltersParametersCopyWith<_$_ProjectsFiltersParameters>
      get copyWith => __$$_ProjectsFiltersParametersCopyWithImpl<
          _$_ProjectsFiltersParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectsFiltersParametersToJson(
      this,
    );
  }
}

abstract class _ProjectsFiltersParameters extends ProjectsFiltersParameters {
  const factory _ProjectsFiltersParameters({final String? status}) =
      _$_ProjectsFiltersParameters;
  const _ProjectsFiltersParameters._() : super._();

  factory _ProjectsFiltersParameters.fromJson(Map<String, dynamic> json) =
      _$_ProjectsFiltersParameters.fromJson;

  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectsFiltersParametersCopyWith<_$_ProjectsFiltersParameters>
      get copyWith => throw _privateConstructorUsedError;
}

TasksFiltersParameters _$TasksFiltersParametersFromJson(
    Map<String, dynamic> json) {
  return _TasksFiltersParameters.fromJson(json);
}

/// @nodoc
mixin _$TasksFiltersParameters {
  String? get status => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TasksFiltersParametersCopyWith<TasksFiltersParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksFiltersParametersCopyWith<$Res> {
  factory $TasksFiltersParametersCopyWith(TasksFiltersParameters value,
          $Res Function(TasksFiltersParameters) then) =
      _$TasksFiltersParametersCopyWithImpl<$Res>;
  $Res call({String? status, String? id});
}

/// @nodoc
class _$TasksFiltersParametersCopyWithImpl<$Res>
    implements $TasksFiltersParametersCopyWith<$Res> {
  _$TasksFiltersParametersCopyWithImpl(this._value, this._then);

  final TasksFiltersParameters _value;
  // ignore: unused_field
  final $Res Function(TasksFiltersParameters) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TasksFiltersParametersCopyWith<$Res>
    implements $TasksFiltersParametersCopyWith<$Res> {
  factory _$$_TasksFiltersParametersCopyWith(_$_TasksFiltersParameters value,
          $Res Function(_$_TasksFiltersParameters) then) =
      __$$_TasksFiltersParametersCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? id});
}

/// @nodoc
class __$$_TasksFiltersParametersCopyWithImpl<$Res>
    extends _$TasksFiltersParametersCopyWithImpl<$Res>
    implements _$$_TasksFiltersParametersCopyWith<$Res> {
  __$$_TasksFiltersParametersCopyWithImpl(_$_TasksFiltersParameters _value,
      $Res Function(_$_TasksFiltersParameters) _then)
      : super(_value, (v) => _then(v as _$_TasksFiltersParameters));

  @override
  _$_TasksFiltersParameters get _value =>
      super._value as _$_TasksFiltersParameters;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_TasksFiltersParameters(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TasksFiltersParameters extends _TasksFiltersParameters {
  const _$_TasksFiltersParameters({this.status, this.id}) : super._();

  factory _$_TasksFiltersParameters.fromJson(Map<String, dynamic> json) =>
      _$$_TasksFiltersParametersFromJson(json);

  @override
  final String? status;
  @override
  final String? id;

  @override
  String toString() {
    return 'TasksFiltersParameters(status: $status, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TasksFiltersParameters &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_TasksFiltersParametersCopyWith<_$_TasksFiltersParameters> get copyWith =>
      __$$_TasksFiltersParametersCopyWithImpl<_$_TasksFiltersParameters>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TasksFiltersParametersToJson(
      this,
    );
  }
}

abstract class _TasksFiltersParameters extends TasksFiltersParameters {
  const factory _TasksFiltersParameters(
      {final String? status, final String? id}) = _$_TasksFiltersParameters;
  const _TasksFiltersParameters._() : super._();

  factory _TasksFiltersParameters.fromJson(Map<String, dynamic> json) =
      _$_TasksFiltersParameters.fromJson;

  @override
  String? get status;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_TasksFiltersParametersCopyWith<_$_TasksFiltersParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

FormsFiltersParameters _$FormsFiltersParametersFromJson(
    Map<String, dynamic> json) {
  return _FormsFiltersParameters.fromJson(json);
}

/// @nodoc
mixin _$FormsFiltersParameters {
  String? get status => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormsFiltersParametersCopyWith<FormsFiltersParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormsFiltersParametersCopyWith<$Res> {
  factory $FormsFiltersParametersCopyWith(FormsFiltersParameters value,
          $Res Function(FormsFiltersParameters) then) =
      _$FormsFiltersParametersCopyWithImpl<$Res>;
  $Res call({String? status, String? id});
}

/// @nodoc
class _$FormsFiltersParametersCopyWithImpl<$Res>
    implements $FormsFiltersParametersCopyWith<$Res> {
  _$FormsFiltersParametersCopyWithImpl(this._value, this._then);

  final FormsFiltersParameters _value;
  // ignore: unused_field
  final $Res Function(FormsFiltersParameters) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_FormsFiltersParametersCopyWith<$Res>
    implements $FormsFiltersParametersCopyWith<$Res> {
  factory _$$_FormsFiltersParametersCopyWith(_$_FormsFiltersParameters value,
          $Res Function(_$_FormsFiltersParameters) then) =
      __$$_FormsFiltersParametersCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? id});
}

/// @nodoc
class __$$_FormsFiltersParametersCopyWithImpl<$Res>
    extends _$FormsFiltersParametersCopyWithImpl<$Res>
    implements _$$_FormsFiltersParametersCopyWith<$Res> {
  __$$_FormsFiltersParametersCopyWithImpl(_$_FormsFiltersParameters _value,
      $Res Function(_$_FormsFiltersParameters) _then)
      : super(_value, (v) => _then(v as _$_FormsFiltersParameters));

  @override
  _$_FormsFiltersParameters get _value =>
      super._value as _$_FormsFiltersParameters;

  @override
  $Res call({
    Object? status = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_FormsFiltersParameters(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FormsFiltersParameters extends _FormsFiltersParameters {
  const _$_FormsFiltersParameters({this.status, this.id}) : super._();

  factory _$_FormsFiltersParameters.fromJson(Map<String, dynamic> json) =>
      _$$_FormsFiltersParametersFromJson(json);

  @override
  final String? status;
  @override
  final String? id;

  @override
  String toString() {
    return 'FormsFiltersParameters(status: $status, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormsFiltersParameters &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_FormsFiltersParametersCopyWith<_$_FormsFiltersParameters> get copyWith =>
      __$$_FormsFiltersParametersCopyWithImpl<_$_FormsFiltersParameters>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FormsFiltersParametersToJson(
      this,
    );
  }
}

abstract class _FormsFiltersParameters extends FormsFiltersParameters {
  const factory _FormsFiltersParameters(
      {final String? status, final String? id}) = _$_FormsFiltersParameters;
  const _FormsFiltersParameters._() : super._();

  factory _FormsFiltersParameters.fromJson(Map<String, dynamic> json) =
      _$_FormsFiltersParameters.fromJson;

  @override
  String? get status;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_FormsFiltersParametersCopyWith<_$_FormsFiltersParameters> get copyWith =>
      throw _privateConstructorUsedError;
}
