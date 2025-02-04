import 'package:flutter/material.dart';

class NotificationDrawer extends StatelessWidget {
  const NotificationDrawer({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.horizontal(
          start: Radius.circular(16.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ColoredBox(
            color: theme.colorScheme.secondaryContainer,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CloseButton(
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Connect care',
                    style: TextStyle(
                      color: theme.colorScheme.onSecondaryContainer,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Conversation Details'),
                  const SizedBox(height: 16),
                  Table(
                    children: const [
                      TableRow(
                        children: [
                          Text('Customer'),
                          Text('Mary Jane'),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text('Date'),
                          Text('29 January 2024'),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text('Submission'),
                          Text('In Application'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text('Conversation Summary'),
                  const SizedBox(height: 16),
                  const Text(
                    'Mary has requested an update to her residential address, it was successfully captured and is currently being processed.',
                  ),
                  const SizedBox(height: 16),
                  const Text('Conversation Summary'),
                  const SizedBox(height: 8),
                  Expanded(
                    child: _ColoredBoxWithRadius(
                      color: theme.colorScheme.background,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: ListView(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: _ColoredBoxWithRadius(
                                color: theme.colorScheme.secondaryContainer,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'I need to change my address',
                                    style: TextStyle(
                                      color: theme
                                          .colorScheme.onSecondaryContainer,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 32),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Sure, I can help you with that, which address would you like to update?',
                                ),
                              ),
                            ),
                            const SizedBox(height: 32),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Currently you are located at:\n\n456 Raffles Place, #08-01 One Raffles Place, Singapore, 048616\n\nWhat will your new address be?',
                                ),
                              ),
                            ),
                            const SizedBox(height: 32),
                            Align(
                              alignment: Alignment.centerRight,
                              child: _ColoredBoxWithRadius(
                                color: theme.colorScheme.secondaryContainer,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '123 Orchard Road, #12-34 \nOrchard Towers, Singapore, 238888',
                                    style: TextStyle(
                                      color: theme
                                          .colorScheme.onSecondaryContainer,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 32),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Just so there is no mistakes, can I confirm the following address is correct',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  FilledButton(
                    onPressed: () {},
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text('View customer profile'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ColoredBoxWithRadius extends StatelessWidget {
  const _ColoredBoxWithRadius({
    required this.color,
    required this.child,
  });

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: child,
    );
  }
}
