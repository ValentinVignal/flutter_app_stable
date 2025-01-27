import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:flutter_app_stable/server/server.dart';
import 'package:flutter_app_stable/src/utils/bindings.dart';
import 'package:hive_flutter/hive_flutter.dart';
// import 'package:flutter_app_stable/src/graphql/__generated__/schema.ast.gql.dart';

abstract class GraphqlClient {
  static Future<void> initialize() async {
    await Hive.initFlutter();
    final link = ServerLink();
    final box = await Hive.openBox("graphql");

    final store = HiveStore(box);
    final cache = Cache(
      store: store,
      // possibleTypes: possibleTypesMap,
    );
    _instance = Client(
      link: link,
      cache: cache,
      defaultFetchPolicies: const {
        OperationType.query: FetchPolicy.CacheAndNetwork,
      },
    );
  }

  static Client? _instance;
  static Client get instance => checkInstance(_instance);
}
