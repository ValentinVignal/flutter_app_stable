import 'package:flutter/foundation.dart';
import 'package:flutter_app_stable/services/cache.dart';
import 'package:logging/logging.dart';

final _logger = Logger('AuthService');

class AuthService {
  static final _isAuthenticatedValueNotifier = ValueNotifier(false);
  static ValueListenable get isAuthenticatedValueListenable =>
      _isAuthenticatedValueNotifier;

  static Future<void> init() async {
    await Cache.init();
    _isAuthenticatedValueNotifier.value =
        Cache.box.get(CacheKey.userId.name) != null;
    Cache.box.watch(key: CacheKey.userId.name).listen((event) {
      _logger.fine('AuthService - listener - userId:${event.value}');
      _isAuthenticatedValueNotifier.value = event.value != null;
    });
  }
}
