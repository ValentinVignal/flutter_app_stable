import 'package:flutter/material.dart';
import 'package:flutter_app_stable/router/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            const WizardRoute($extra: 4).push(context);
          },
          child: const Text('Home'),
        ),
      ),
    );
  }
}
