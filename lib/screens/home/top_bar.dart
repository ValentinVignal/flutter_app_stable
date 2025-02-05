import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/routes.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MenuAnchor(
              menuChildren: [
                MenuItemButton(
                  leadingIcon: const Text('MJ'),
                  child: const Text('Mary Jane updated her customer 360'),
                  onPressed: () {
                    const NotificationRoute(id: 'notification-id')
                        .push(context);
                  },
                ),
                const MenuItemButton(
                  leadingIcon: Text('FH'),
                  child: Text('Olie replied to Candice'),
                ),
                const MenuItemButton(
                  leadingIcon: Text('PJ'),
                  child: Text('Paul J submitted Candidatesignature.pdf'),
                ),
              ],
              builder: (context, controller, _) {
                final theme = Theme.of(context);
                return Stack(
                  children: [
                    IconButton(
                      onPressed: () {
                        if (controller.isOpen) {
                          controller.close();
                        } else {
                          controller.open();
                        }
                      },
                      icon: const Icon(Icons.inbox_outlined),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary.withOpacity(1),
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            '2',
                            style: theme.textTheme.labelSmall!.copyWith(
                              color: theme.colorScheme.onPrimary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
            IconButton(
              onPressed: () {},
              icon: const Text('JL'),
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
