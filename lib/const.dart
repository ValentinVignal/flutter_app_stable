import 'package:flutter/material.dart';

class Const extends StatefulWidget {
  const Const({super.key});

  @override
  State<Const> createState() => _ConstState();
}

class _ConstState extends State<Const> {
  var _count = 0;

  @override
  Widget build(BuildContext context) {
    print('build root');
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Text('$_count'),
          ),
        ),
        Expanded(
          child: Center(
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  _count++;
                });
              },
              child: const Icon(Icons.add),
            ),
          ),
        ),
        const Expanded(
          child: Center(
            child: _Const(),
          ),
        ),
        Expanded(
          child: Center(
            child: _NotConst(),
          ),
        ),
      ],
    );
  }
}

class _Const extends StatelessWidget {
  const _Const();

  @override
  Widget build(BuildContext context) {
    print('build Const');
    return const Text('print Const');
  }
}

class _NotConst extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  _NotConst();

  @override
  Widget build(BuildContext context) {
    print('build NotConst');
    return const Text('Not const');
  }
}
