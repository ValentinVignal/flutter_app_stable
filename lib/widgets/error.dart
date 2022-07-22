import 'package:flutter/material.dart';

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({
    this.error = 'Error',
    Key? key,
  }) : super(key: key);

  final Object error;

  @override
  Widget build(BuildContext context) {
    return Text(
      error.toString(),
      style: TextStyle(color: Theme.of(context).colorScheme.error),
    );
  }
}
