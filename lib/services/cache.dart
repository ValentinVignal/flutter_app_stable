import 'package:hive_flutter/hive_flutter.dart';

enum CacheKey {
  userId,
}

class Cache {
  static Future<void> init() async {
    Hive.init('./cache');
    _box ??= await Hive.openBox<String>('cacheBox');
  }

  static Box<String>? _box;

  static Box<String> get box => _box!;
}
