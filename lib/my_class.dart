import 'package:drift/drift.dart';

class MyClass {
  const MyClass();
}

class MyClassConverter extends TypeConverter<MyClass, String> {
  const MyClassConverter();
  @override
  MyClass fromSql(String fromDb) {
    return const MyClass();
  }

  @override
  String toSql(MyClass value) {
    return 'my-string';
  }
}
