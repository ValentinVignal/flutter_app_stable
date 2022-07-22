import 'package:flutter_app_stable/services/cache.dart';
import 'package:logging/logging.dart';
import 'package:riverpod/riverpod.dart';

final _logger = Logger('NotificationCount');

final notificationCountProvider = StreamProvider.autoDispose<int>((ref) {
  _logger.info('Creation of a new stream');
  assert(Cache.box.get(CacheKey.userId.name) != null,
      'The user needs to be logged in');

  return Stream.periodic(
    const Duration(seconds: 1),
    (index) {
      _logger.finest('New count dumped in the stream');
      return index;
    },
  );
});
