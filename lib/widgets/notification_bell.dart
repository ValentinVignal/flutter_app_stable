import 'package:flutter/material.dart';
import 'package:flutter_app_stable/services/notification_count.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationBell extends ConsumerWidget {
  const NotificationBell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        const Icon(
          Icons.notifications,
        ),
        Text(
          (ref.watch(notificationCountProvider).value ?? 0).toString(),
          style: theme.textTheme.bodySmall!.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
