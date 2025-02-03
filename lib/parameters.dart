import 'package:flutter/material.dart';
import 'package:flutter_app_stable/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Parameters extends ConsumerWidget {
  const Parameters({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build Parameters');
    final count1 = ref.watch(count1Provider);
    final count2 = ref.watch(count2Provider);
    return _SubWidget(
      count1: count1,
      onPressed1: () {
        ref.read(count1Provider.notifier).state++;
      },
      count2: count2,
      onPressed2: () {
        ref.read(count2Provider.notifier).state++;
      },
    );
  }
}

class _SubWidget extends StatelessWidget {
  const _SubWidget({
    required this.count1,
    required this.onPressed1,
    required this.count2,
    required this.onPressed2,
  });

  final int count1;
  final VoidCallback onPressed1;
  final int count2;
  final VoidCallback onPressed2;

  @override
  Widget build(BuildContext context) {
    print('build SubWidget');
    return Row(
      children: [
        Expanded(
          child: _Column1(
            count: count1,
            onPressed: onPressed1,
          ),
        ),
        Expanded(
          child: _Column2(
            count: count2,
            onPressed: onPressed2,
          ),
        ),
      ],
    );
  }
}

class _Column1 extends StatelessWidget {
  const _Column1({
    required this.count,
    required this.onPressed,
  });

  final int count;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    print('build Column1');
    return Column(
      children: [
        Expanded(
          child: Center(
            child: _Text1(
              count: count,
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: _Button1(
              onPressed: onPressed,
            ),
          ),
        ),
      ],
    );
  }
}

class _Column2 extends StatelessWidget {
  const _Column2({
    required this.count,
    required this.onPressed,
  });

  final int count;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    print('build Column2');
    return Column(
      children: [
        Expanded(
          child: Center(
            child: _Text2(
              count: count,
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: _Button2(
              onPressed: onPressed,
            ),
          ),
        ),
      ],
    );
  }
}

class _Text1 extends StatelessWidget {
  const _Text1({
    required this.count,
  });

  final int count;

  @override
  Widget build(BuildContext context) {
    print('build Text1');
    return Text(count.toString());
  }
}

class _Button1 extends ConsumerWidget {
  const _Button1({
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build Button1');
    return FloatingActionButton(
      onPressed: onPressed,
      child: const Icon(Icons.add),
    );
  }
}

class _Text2 extends StatelessWidget {
  const _Text2({
    required this.count,
  });

  final int count;

  @override
  Widget build(BuildContext context) {
    print('build Text2');
    return Text(count.toString());
  }
}

class _Button2 extends ConsumerWidget {
  const _Button2({
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build Button2');
    return FloatingActionButton(
      onPressed: onPressed,
      child: const Icon(Icons.add),
    );
  }
}
