import 'package:flutter_app_stable/stream.dart';
import 'package:riverpod/riverpod.dart';

final streamProvider = StreamProvider<int>((ref) {
  return StreamService.stream;
});
