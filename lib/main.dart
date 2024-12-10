import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_app_stable/router/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        routerConfig: router,
        title: 'Riverpod introduction',
        builder: (context, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const _AddressBar(),
              Expanded(
                child: child!,
              ),
            ],
          );
        },
      ),
    );
  }
}

class _AddressBar extends StatefulWidget {
  const _AddressBar({super.key});

  @override
  State<_AddressBar> createState() => _AddressBarState();
}

class _AddressBarState extends State<_AddressBar> {
  var _c = 0;
  @override
  Widget build(BuildContext context) {
    if (_c == 0) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        setState(() {
          _c++;
        });
      });
      return const SizedBox();
    }
    return Material(
      child: ListenableBuilder(
        listenable: router.routerDelegate,
        builder: (context, _) {
          return Text(router.routeInformationProvider.value.uri.toString());
        },
      ),
    );
  }
}
