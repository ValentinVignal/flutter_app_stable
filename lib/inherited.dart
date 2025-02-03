import 'package:flutter/material.dart';
import 'package:flutter_app_stable/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Inherited extends StatelessWidget {
  const Inherited({super.key});

  @override
  Widget build(BuildContext context) {
    print('build Inherited');
    return const _SubWidget();
  }
}

class _SubWidget extends StatelessWidget {
  const _SubWidget();

  @override
  Widget build(BuildContext context) {
    print('build SubWidget');
    return const Row(
      children: [
        Expanded(child: _Column1()),
        Expanded(child: _Column2()),
      ],
    );
  }
}

class _Column1 extends StatelessWidget {
  const _Column1();

  @override
  Widget build(BuildContext context) {
    print('build Column1');
    return const Column(
      children: [
        Expanded(
          child: Center(
            child: _Text1(),
          ),
        ),
        Expanded(
          child: Center(
            child: _Button1(),
          ),
        ),
      ],
    );
  }
}

class _Column2 extends StatelessWidget {
  const _Column2();

  @override
  Widget build(BuildContext context) {
    print('build Column2');
    return const Column(
      children: [
        Expanded(
          child: Center(
            child: _Text2(),
          ),
        ),
        Expanded(
          child: Center(
            child: _Button2(),
          ),
        ),
      ],
    );
  }
}

class _Text1 extends ConsumerWidget {
  const _Text1();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build Text1');
    final count = ref.watch(count1Provider);
    return Text(count.toString());
  }
}

class _Button1 extends ConsumerWidget {
  const _Button1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build Button1');
    return FloatingActionButton(
      onPressed: () {
        ref.read(count1Provider.notifier).state++;
      },
      child: const Icon(Icons.add),
    );
  }
}

class _Text2 extends ConsumerWidget {
  const _Text2();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build Text2');
    final count = ref.watch(count2Provider);
    return Text(count.toString());
  }
}

class _Button2 extends ConsumerWidget {
  const _Button2();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build Button2');
    return FloatingActionButton(
      onPressed: () {
        ref.read(count2Provider.notifier).state++;
      },
      child: const Icon(Icons.add),
    );
  }
}
