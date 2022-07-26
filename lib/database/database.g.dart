// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class ProjectData extends DataClass implements Insertable<ProjectData> {
  final int id;
  final String name;
  final ProjectStatus status;
  ProjectData({required this.id, required this.name, required this.status});
  factory ProjectData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ProjectData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      status: $ProjectTable.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}status']))!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    {
      final converter = $ProjectTable.$converter0;
      map['status'] = Variable<int>(converter.mapToSql(status)!);
    }
    return map;
  }

  ProjectCompanion toCompanion(bool nullToAbsent) {
    return ProjectCompanion(
      id: Value(id),
      name: Value(name),
      status: Value(status),
    );
  }

  factory ProjectData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProjectData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      status: serializer.fromJson<ProjectStatus>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'status': serializer.toJson<ProjectStatus>(status),
    };
  }

  ProjectData copyWith({int? id, String? name, ProjectStatus? status}) =>
      ProjectData(
        id: id ?? this.id,
        name: name ?? this.name,
        status: status ?? this.status,
      );
  @override
  String toString() {
    return (StringBuffer('ProjectData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProjectData &&
          other.id == this.id &&
          other.name == this.name &&
          other.status == this.status);
}

class ProjectCompanion extends UpdateCompanion<ProjectData> {
  final Value<int> id;
  final Value<String> name;
  final Value<ProjectStatus> status;
  const ProjectCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.status = const Value.absent(),
  });
  ProjectCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required ProjectStatus status,
  })  : name = Value(name),
        status = Value(status);
  static Insertable<ProjectData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<ProjectStatus>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (status != null) 'status': status,
    });
  }

  ProjectCompanion copyWith(
      {Value<int>? id, Value<String>? name, Value<ProjectStatus>? status}) {
    return ProjectCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (status.present) {
      final converter = $ProjectTable.$converter0;
      map['status'] = Variable<int>(converter.mapToSql(status.value)!);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProjectCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

class $ProjectTable extends Project with TableInfo<$ProjectTable, ProjectData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProjectTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumnWithTypeConverter<ProjectStatus, int?> status =
      GeneratedColumn<int?>('status', aliasedName, false,
              type: const IntType(), requiredDuringInsert: true)
          .withConverter<ProjectStatus>($ProjectTable.$converter0);
  @override
  List<GeneratedColumn> get $columns => [id, name, status];
  @override
  String get aliasedName => _alias ?? 'project';
  @override
  String get actualTableName => 'project';
  @override
  VerificationContext validateIntegrity(Insertable<ProjectData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    context.handle(_statusMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProjectData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ProjectData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProjectTable createAlias(String alias) {
    return $ProjectTable(attachedDatabase, alias);
  }

  static TypeConverter<ProjectStatus, int> $converter0 =
      const EnumIndexConverter<ProjectStatus>(ProjectStatus.values);
}

class TaskData extends DataClass implements Insertable<TaskData> {
  final int id;
  final String name;
  final int projectId;
  final TaskStatus status;
  TaskData(
      {required this.id,
      required this.name,
      required this.projectId,
      required this.status});
  factory TaskData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TaskData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      projectId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}project_id'])!,
      status: $TaskTable.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}status']))!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['project_id'] = Variable<int>(projectId);
    {
      final converter = $TaskTable.$converter0;
      map['status'] = Variable<int>(converter.mapToSql(status)!);
    }
    return map;
  }

  TaskCompanion toCompanion(bool nullToAbsent) {
    return TaskCompanion(
      id: Value(id),
      name: Value(name),
      projectId: Value(projectId),
      status: Value(status),
    );
  }

  factory TaskData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TaskData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      projectId: serializer.fromJson<int>(json['projectId']),
      status: serializer.fromJson<TaskStatus>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'projectId': serializer.toJson<int>(projectId),
      'status': serializer.toJson<TaskStatus>(status),
    };
  }

  TaskData copyWith(
          {int? id, String? name, int? projectId, TaskStatus? status}) =>
      TaskData(
        id: id ?? this.id,
        name: name ?? this.name,
        projectId: projectId ?? this.projectId,
        status: status ?? this.status,
      );
  @override
  String toString() {
    return (StringBuffer('TaskData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('projectId: $projectId, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, projectId, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TaskData &&
          other.id == this.id &&
          other.name == this.name &&
          other.projectId == this.projectId &&
          other.status == this.status);
}

class TaskCompanion extends UpdateCompanion<TaskData> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> projectId;
  final Value<TaskStatus> status;
  const TaskCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.projectId = const Value.absent(),
    this.status = const Value.absent(),
  });
  TaskCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required int projectId,
    required TaskStatus status,
  })  : name = Value(name),
        projectId = Value(projectId),
        status = Value(status);
  static Insertable<TaskData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? projectId,
    Expression<TaskStatus>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (projectId != null) 'project_id': projectId,
      if (status != null) 'status': status,
    });
  }

  TaskCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<int>? projectId,
      Value<TaskStatus>? status}) {
    return TaskCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      projectId: projectId ?? this.projectId,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<int>(projectId.value);
    }
    if (status.present) {
      final converter = $TaskTable.$converter0;
      map['status'] = Variable<int>(converter.mapToSql(status.value)!);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TaskCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('projectId: $projectId, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

class $TaskTable extends Task with TableInfo<$TaskTable, TaskData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TaskTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _projectIdMeta = const VerificationMeta('projectId');
  @override
  late final GeneratedColumn<int?> projectId = GeneratedColumn<int?>(
      'project_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES project (id)');
  final VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumnWithTypeConverter<TaskStatus, int?> status =
      GeneratedColumn<int?>('status', aliasedName, false,
              type: const IntType(), requiredDuringInsert: true)
          .withConverter<TaskStatus>($TaskTable.$converter0);
  @override
  List<GeneratedColumn> get $columns => [id, name, projectId, status];
  @override
  String get aliasedName => _alias ?? 'task';
  @override
  String get actualTableName => 'task';
  @override
  VerificationContext validateIntegrity(Insertable<TaskData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('project_id')) {
      context.handle(_projectIdMeta,
          projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta));
    } else if (isInserting) {
      context.missing(_projectIdMeta);
    }
    context.handle(_statusMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TaskData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TaskData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TaskTable createAlias(String alias) {
    return $TaskTable(attachedDatabase, alias);
  }

  static TypeConverter<TaskStatus, int> $converter0 =
      const EnumIndexConverter<TaskStatus>(TaskStatus.values);
}

class FormData extends DataClass implements Insertable<FormData> {
  final int id;
  final String name;
  final int projectId;
  final FormStatus status;
  FormData(
      {required this.id,
      required this.name,
      required this.projectId,
      required this.status});
  factory FormData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return FormData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      projectId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}project_id'])!,
      status: $FormTable.$converter0.mapToDart(const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}status']))!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['project_id'] = Variable<int>(projectId);
    {
      final converter = $FormTable.$converter0;
      map['status'] = Variable<int>(converter.mapToSql(status)!);
    }
    return map;
  }

  FormCompanion toCompanion(bool nullToAbsent) {
    return FormCompanion(
      id: Value(id),
      name: Value(name),
      projectId: Value(projectId),
      status: Value(status),
    );
  }

  factory FormData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FormData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      projectId: serializer.fromJson<int>(json['projectId']),
      status: serializer.fromJson<FormStatus>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'projectId': serializer.toJson<int>(projectId),
      'status': serializer.toJson<FormStatus>(status),
    };
  }

  FormData copyWith(
          {int? id, String? name, int? projectId, FormStatus? status}) =>
      FormData(
        id: id ?? this.id,
        name: name ?? this.name,
        projectId: projectId ?? this.projectId,
        status: status ?? this.status,
      );
  @override
  String toString() {
    return (StringBuffer('FormData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('projectId: $projectId, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, projectId, status);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FormData &&
          other.id == this.id &&
          other.name == this.name &&
          other.projectId == this.projectId &&
          other.status == this.status);
}

class FormCompanion extends UpdateCompanion<FormData> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> projectId;
  final Value<FormStatus> status;
  const FormCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.projectId = const Value.absent(),
    this.status = const Value.absent(),
  });
  FormCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required int projectId,
    required FormStatus status,
  })  : name = Value(name),
        projectId = Value(projectId),
        status = Value(status);
  static Insertable<FormData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? projectId,
    Expression<FormStatus>? status,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (projectId != null) 'project_id': projectId,
      if (status != null) 'status': status,
    });
  }

  FormCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<int>? projectId,
      Value<FormStatus>? status}) {
    return FormCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      projectId: projectId ?? this.projectId,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<int>(projectId.value);
    }
    if (status.present) {
      final converter = $FormTable.$converter0;
      map['status'] = Variable<int>(converter.mapToSql(status.value)!);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FormCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('projectId: $projectId, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

class $FormTable extends Form with TableInfo<$FormTable, FormData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FormTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _projectIdMeta = const VerificationMeta('projectId');
  @override
  late final GeneratedColumn<int?> projectId = GeneratedColumn<int?>(
      'project_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES project (id)');
  final VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumnWithTypeConverter<FormStatus, int?> status =
      GeneratedColumn<int?>('status', aliasedName, false,
              type: const IntType(), requiredDuringInsert: true)
          .withConverter<FormStatus>($FormTable.$converter0);
  @override
  List<GeneratedColumn> get $columns => [id, name, projectId, status];
  @override
  String get aliasedName => _alias ?? 'form';
  @override
  String get actualTableName => 'form';
  @override
  VerificationContext validateIntegrity(Insertable<FormData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('project_id')) {
      context.handle(_projectIdMeta,
          projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta));
    } else if (isInserting) {
      context.missing(_projectIdMeta);
    }
    context.handle(_statusMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FormData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return FormData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FormTable createAlias(String alias) {
    return $FormTable(attachedDatabase, alias);
  }

  static TypeConverter<FormStatus, int> $converter0 =
      const EnumIndexConverter<FormStatus>(FormStatus.values);
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $ProjectTable project = $ProjectTable(this);
  late final $TaskTable task = $TaskTable(this);
  late final $FormTable form = $FormTable(this);
  late final ProjectDao projectDao = ProjectDao(this as Database);
  late final TaskDao taskDao = TaskDao(this as Database);
  late final FormDao formDao = FormDao(this as Database);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [project, task, form];
}
