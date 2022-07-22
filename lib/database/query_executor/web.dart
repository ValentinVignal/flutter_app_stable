import 'package:drift/drift.dart';
import 'package:drift/web.dart';

Future<QueryExecutor> getQueryExecutor() async {
  return WebDatabase.withStorage(
      await DriftWebStorage.indexedDbIfSupported('app'));
}
