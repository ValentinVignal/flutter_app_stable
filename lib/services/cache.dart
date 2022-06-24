import 'package:hive/hive.dart';

enum CacheKey {
  userId,
}

class Cache {
  static Future<void> init() async {
    final collection = await BoxCollection.open(
      'cacheCollection',
      {'cacheBox'},
    );
    _box = await collection.openBox<String>('cacheBox');
  }

  static CollectionBox<String>? _box;

  static CollectionBox<String> get box => _box!;
}
