// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $DriftUserTable extends DriftUser
    with TableInfo<$DriftUserTable, DriftUserData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftUserTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, email];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'drift_user';
  @override
  VerificationContext validateIntegrity(Insertable<DriftUserData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  DriftUserData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftUserData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
    );
  }

  @override
  $DriftUserTable createAlias(String alias) {
    return $DriftUserTable(attachedDatabase, alias);
  }
}

class DriftUserData extends DataClass implements Insertable<DriftUserData> {
  final String id;
  final String name;
  final String email;
  const DriftUserData(
      {required this.id, required this.name, required this.email});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    return map;
  }

  DriftUserCompanion toCompanion(bool nullToAbsent) {
    return DriftUserCompanion(
      id: Value(id),
      name: Value(name),
      email: Value(email),
    );
  }

  factory DriftUserData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftUserData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
    };
  }

  DriftUserData copyWith({String? id, String? name, String? email}) =>
      DriftUserData(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
      );
  DriftUserData copyWithCompanion(DriftUserCompanion data) {
    return DriftUserData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      email: data.email.present ? data.email.value : this.email,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DriftUserData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, email);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftUserData &&
          other.id == this.id &&
          other.name == this.name &&
          other.email == this.email);
}

class DriftUserCompanion extends UpdateCompanion<DriftUserData> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> email;
  final Value<int> rowid;
  const DriftUserCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DriftUserCompanion.insert({
    required String id,
    required String name,
    required String email,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        email = Value(email);
  static Insertable<DriftUserData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? email,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DriftUserCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String>? email,
      Value<int>? rowid}) {
    return DriftUserCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftUserCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $DriftUserTable driftUser = $DriftUserTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [driftUser];
}

typedef $$DriftUserTableCreateCompanionBuilder = DriftUserCompanion Function({
  required String id,
  required String name,
  required String email,
  Value<int> rowid,
});
typedef $$DriftUserTableUpdateCompanionBuilder = DriftUserCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<String> email,
  Value<int> rowid,
});

class $$DriftUserTableFilterComposer
    extends Composer<_$AppDatabase, $DriftUserTable> {
  $$DriftUserTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));
}

class $$DriftUserTableOrderingComposer
    extends Composer<_$AppDatabase, $DriftUserTable> {
  $$DriftUserTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));
}

class $$DriftUserTableAnnotationComposer
    extends Composer<_$AppDatabase, $DriftUserTable> {
  $$DriftUserTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);
}

class $$DriftUserTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DriftUserTable,
    DriftUserData,
    $$DriftUserTableFilterComposer,
    $$DriftUserTableOrderingComposer,
    $$DriftUserTableAnnotationComposer,
    $$DriftUserTableCreateCompanionBuilder,
    $$DriftUserTableUpdateCompanionBuilder,
    (
      DriftUserData,
      BaseReferences<_$AppDatabase, $DriftUserTable, DriftUserData>
    ),
    DriftUserData,
    PrefetchHooks Function()> {
  $$DriftUserTableTableManager(_$AppDatabase db, $DriftUserTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DriftUserTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DriftUserTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DriftUserTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DriftUserCompanion(
            id: id,
            name: name,
            email: email,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            required String email,
            Value<int> rowid = const Value.absent(),
          }) =>
              DriftUserCompanion.insert(
            id: id,
            name: name,
            email: email,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DriftUserTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DriftUserTable,
    DriftUserData,
    $$DriftUserTableFilterComposer,
    $$DriftUserTableOrderingComposer,
    $$DriftUserTableAnnotationComposer,
    $$DriftUserTableCreateCompanionBuilder,
    $$DriftUserTableUpdateCompanionBuilder,
    (
      DriftUserData,
      BaseReferences<_$AppDatabase, $DriftUserTable, DriftUserData>
    ),
    DriftUserData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$DriftUserTableTableManager get driftUser =>
      $$DriftUserTableTableManager(_db, _db.driftUser);
}
