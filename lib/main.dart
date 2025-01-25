import 'package:flutter/material.dart';
import 'package:flutter_app_stable/src/graphql/client.dart';
import 'package:flutter_app_stable/src/screens/users_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  await GraphqlClient.initialize();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      home: const UsersScreen(),
    );
  }
}
