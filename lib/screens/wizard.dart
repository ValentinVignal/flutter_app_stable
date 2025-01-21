import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final counterProvider = StateProvider.autoDispose((ref) => 0);

class WizardScreen extends ConsumerStatefulWidget {
  const WizardScreen({
    required this.step,
    super.key,
  });

  final int step;

  @override
  ConsumerState<WizardScreen> createState() => _WizardScreenState();
}

class _WizardScreenState extends ConsumerState<WizardScreen> {
  var _counter = 0;
  @override
  Widget build(BuildContext context) {
    final counter = ref.watch(counterProvider);
    return PopScope(
      canPop: widget.step < 3,
      onPopInvoked: (didPop) async {
        if (didPop) return;
        final pop = await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Are you sure?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text('No'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text('Yes'),
              ),
            ],
          ),
        );
        if ((pop ?? false) && context.mounted) {
          Navigator.of(context).pop();
        }
      },
      child: Dialog.fullscreen(
        child: Column(
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: Row(
                  children: [
                    const SizedBox(width: 24),
                    for (final i in const [0, 1, 2, 3])
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color:
                                  i <= widget.step ? Colors.red : Colors.grey,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const SizedBox(height: 8),
                          ),
                        ),
                      ),
                    const CloseButton(),
                  ],
                )),
            Expanded(
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Count with state: $_counter'),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _counter++;
                        });
                      },
                      child: const Text('+'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Count riverpod: $counter'),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        ref.read(counterProvider.notifier).state++;
                      },
                      child: const Text('+'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: widget.step == 0
                          ? null
                          : () {
                              WizardRoute(step: widget.step - 1)
                                  .replace(context);
                            },
                      child: const Text('Previous'),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        if (widget.step == 3) {
                          GoRouter.of(context).pop();
                        } else {
                          WizardRoute(step: widget.step + 1).replace(context);
                        }
                      },
                      child: Text(
                        widget.step == 3 ? 'Finish' : 'Next',
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
