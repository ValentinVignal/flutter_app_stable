import 'package:flutter/material.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _shorebirdUpdater = ShorebirdUpdater();

  late final Future<Patch?> _currentPatch;

  UpdateStatus? _updateStatus;
  UpdateException? _updateException;

  Future<void> _onTap() async {
    // Check whether a new update is available.
    final status = await _shorebirdUpdater.checkForUpdate();
    setState(() {
      _updateStatus = status;
    });

    if (status == UpdateStatus.outdated) {
      try {
        // Perform the update
        await _shorebirdUpdater.update();
      } on UpdateException catch (error) {
        setState(() {
          _updateException = error;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _currentPatch = _shorebirdUpdater.readCurrentPatch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shorebird Example')),
      body: Center(
        child: Column(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Current patch:'),
            FutureBuilder<Patch?>(
              future: _currentPatch,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (!snapshot.hasData || snapshot.data == null) {
                  return const Text('No patch applied.');
                } else {
                  final patch = snapshot.data!;
                  return Text('Patch version: ${patch.number}');
                }
              },
            ),
            Text('Update status:'),
            Text(_updateStatus?.name ?? 'null'),
            Text('Exception:'),
            Text(_updateException.toString()),

            Text('Patched 1'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTap,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
