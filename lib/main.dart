import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: ColoredBox(
          color: Colors.deepPurple,
          child: Center(child: _MyWidget()),
        ),
      ),
    ),
  );
}

class _MyWidget extends StatelessWidget {
  const _MyWidget();

  Future<void> _showActionSheetWrapper(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return const Column(children: [TextField(), CloseButton()]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => _showActionSheetWrapper(context),
          child: const Text('button'),
        ),
        TextField(
          onTap: () => _showActionSheetWrapper(context),
          readOnly: true,
          enabled: true,
        ),
      ],
    );
  }
}
