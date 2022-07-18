// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class UserTableData extends DataClass implements Insertable<UserTableData> {
  final String id;
  final UserBuiltValue user;
  final UserBuiltValueBuilder userBuilder;
  UserTableData(
      {required this.id, required this.user, required this.userBuilder});
  factory UserTableData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return UserTableData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      user: $UserTableTable.$converter0.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user']))!,
      userBuilder: $UserTableTable.$converter1.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_builder']))!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    {
      final converter = $UserTableTable.$converter0;
      map['user'] = Variable<String>(converter.mapToSql(user)!);
    }
    {
      final converter = $UserTableTable.$converter1;
      map['user_builder'] = Variable<String>(converter.mapToSql(userBuilder)!);
    }
    return map;
  }

  UserTableCompanion toCompanion(bool nullToAbsent) {
    return UserTableCompanion(
      id: Value(id),
      user: Value(user),
      userBuilder: Value(userBuilder),
    );
  }

  factory UserTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserTableData(
      id: serializer.fromJson<String>(json['id']),
      user: serializer.fromJson<UserBuiltValue>(json['user']),
      userBuilder:
          serializer.fromJson<UserBuiltValueBuilder>(json['userBuilder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'user': serializer.toJson<UserBuiltValue>(user),
      'userBuilder': serializer.toJson<UserBuiltValueBuilder>(userBuilder),
    };
  }

  UserTableData copyWith(
          {String? id,
          UserBuiltValue? user,
          UserBuiltValueBuilder? userBuilder}) =>
      UserTableData(
        id: id ?? this.id,
        user: user ?? this.user,
        userBuilder: userBuilder ?? this.userBuilder,
      );
  @override
  String toString() {
    return (StringBuffer('UserTableData(')
          ..write('id: $id, ')
          ..write('user: $user, ')
          ..write('userBuilder: $userBuilder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, user, userBuilder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserTableData &&
          other.id == this.id &&
          other.user == this.user &&
          other.userBuilder == this.userBuilder);
}

class UserTableCompanion extends UpdateCompanion<UserTableData> {
  final Value<String> id;
  final Value<UserBuiltValue> user;
  final Value<UserBuiltValueBuilder> userBuilder;
  const UserTableCompanion({
    this.id = const Value.absent(),
    this.user = const Value.absent(),
    this.userBuilder = const Value.absent(),
  });
  UserTableCompanion.insert({
    required String id,
    required UserBuiltValue user,
    required UserBuiltValueBuilder userBuilder,
  })  : id = Value(id),
        user = Value(user),
        userBuilder = Value(userBuilder);
  static Insertable<UserTableData> custom({
    Expression<String>? id,
    Expression<UserBuiltValue>? user,
    Expression<UserBuiltValueBuilder>? userBuilder,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (user != null) 'user': user,
      if (userBuilder != null) 'user_builder': userBuilder,
    });
  }

  UserTableCompanion copyWith(
      {Value<String>? id,
      Value<UserBuiltValue>? user,
      Value<UserBuiltValueBuilder>? userBuilder}) {
    return UserTableCompanion(
      id: id ?? this.id,
      user: user ?? this.user,
      userBuilder: userBuilder ?? this.userBuilder,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (user.present) {
      final converter = $UserTableTable.$converter0;
      map['user'] = Variable<String>(converter.mapToSql(user.value)!);
    }
    if (userBuilder.present) {
      final converter = $UserTableTable.$converter1;
      map['user_builder'] =
          Variable<String>(converter.mapToSql(userBuilder.value)!);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserTableCompanion(')
          ..write('id: $id, ')
          ..write('user: $user, ')
          ..write('userBuilder: $userBuilder')
          ..write(')'))
        .toString();
  }
}

class $UserTableTable extends UserTable
    with TableInfo<$UserTableTable, UserTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _userMeta = const VerificationMeta('user');
  @override
  late final GeneratedColumnWithTypeConverter<UserBuiltValue, String?> user =
      GeneratedColumn<String?>('user', aliasedName, false,
              type: const StringType(), requiredDuringInsert: true)
          .withConverter<UserBuiltValue>($UserTableTable.$converter0);
  final VerificationMeta _userBuilderMeta =
      const VerificationMeta('userBuilder');
  @override
  late final GeneratedColumnWithTypeConverter<UserBuiltValueBuilder, String?>
      userBuilder = GeneratedColumn<String?>('user_builder', aliasedName, false,
              type: const StringType(), requiredDuringInsert: true)
          .withConverter<UserBuiltValueBuilder>($UserTableTable.$converter1);
  @override
  List<GeneratedColumn> get $columns => [id, user, userBuilder];
  @override
  String get aliasedName => _alias ?? 'user_table';
  @override
  String get actualTableName => 'user_table';
  @override
  VerificationContext validateIntegrity(Insertable<UserTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    context.handle(_userMeta, const VerificationResult.success());
    context.handle(_userBuilderMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  UserTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return UserTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UserTableTable createAlias(String alias) {
    return $UserTableTable(attachedDatabase, alias);
  }

  static TypeConverter<UserBuiltValue, String> $converter0 =
      const UserConverter();
  static TypeConverter<UserBuiltValueBuilder, String> $converter1 =
      const UserBuilderConverter();
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $UserTableTable userTable = $UserTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [userTable];
}
