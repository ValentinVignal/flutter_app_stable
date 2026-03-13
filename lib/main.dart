import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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
  late final Future<Map<String, String>> _reachabilityFuture;

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
    _reachabilityFuture = NetworkChecker().checkReachability();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shorebird Example')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          Text('Current patch:'),
          const SizedBox(height: 8),
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
          const SizedBox(height: 8),
          Text('Update status:'),
          const SizedBox(height: 8),
          Text(_updateStatus?.name ?? 'null'),
          const SizedBox(height: 8),
          Text('Exception:'),
          const SizedBox(height: 8),
          Text(_updateException.toString()),

          const SizedBox(height: 8),
          Text('Patched 1'),
          const SizedBox(height: 8),

          FutureBuilder(
            future: _reachabilityFuture,
            builder: (context, snapshot) {
              final result = snapshot.data;
              return Column(
                children: [
                  for (final MapEntry(:key, :value)
                      in result?.entries ?? const {})
                    Text('$key: $value'),
                ],
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTap,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class NetworkChecker {
  /// The URLs to check for network reachability.
  static final urlsToCheck =
      [
        'https://api.shorebird.dev',
        'https://console.shorebird.dev',
        'https://oauth2.googleapis.com',
        'https://storage.googleapis.com',
        'https://cdn.shorebird.cloud',
      ].map(Uri.parse).toList();

  /// Verify that each of [urlsToCheck] responds to an HTTP GET request.
  Future<Map<String, String>> checkReachability() async {
    final result = <String, String>{};
    for (final url in urlsToCheck) {
      try {
        final response = await http.get(url);
        if (response.statusCode == 200) {
          result[url.toString()] = 'reachable';
        } else {
          result[url.toString()] =
              '${response.statusCode} ${response.reasonPhrase}';
        }
      } on Exception catch (e) {
        result[url.toString()] = 'error: $e';
      }
    }
    return result;
  }
}
