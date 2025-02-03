import 'package:flutter_riverpod/flutter_riverpod.dart';

final count1Provider = StateProvider.autoDispose<int>((ref) => 0);
final count2Provider = StateProvider.autoDispose<int>((ref) => 0);
