import 'package:flutter_app_stable/services/cache.dart';

class AuthService {
  static bool _isAuthenticated = false;
  static bool get isAuthenticated => _isAuthenticated;

  static Future<void> init() async {
    await Cache.init();
    _isAuthenticated = (Cache.box.get(CacheKey.userId.name)) != null;
    Cache.box.watch(key: CacheKey.userId.name).forEach((even) {
      _isAuthenticated = even.value != null;
    });
  }
}
