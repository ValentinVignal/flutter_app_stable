import 'package:hive/hive.dart';

enum CacheKey {
  userId,
}

class Cache {
  static Future<void> init() async {
    _box ??= await Hive.openBox<String>('cacheBox');
  }

  static Box<String?>? _box;

  static Box<String?> get box => _box!;
}
