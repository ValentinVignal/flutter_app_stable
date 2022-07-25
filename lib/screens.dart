import 'package:flutter/material.dart';
import 'package:flutter_app_stable/pages.dart';

const _families = [
  'family0',
  'family1',
  'family2',
  'family3',
  'family4',
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView.builder(
        itemCount: _families.length,
        itemBuilder: ((context, index) => ListTile(
              title: Text(_families[index]),
              onTap: () => GFamilyRoute(fid: _families[index]).go(context),
            )),
      ),
    );
  }
}

const _persons = [
  'person0',
  'person1',
  'person2',
  'person3',
  'person4',
];

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({
    required this.fid,
    Key? key,
  }) : super(key: key);

  final String fid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family - $fid'),
      ),
      body: ListView.builder(
        itemCount: _persons.length,
        itemBuilder: ((context, index) => ListTile(
              title: Text(_persons[index]),
              onTap: () =>
                  GPersonRoute(fid: fid, pid: _persons[index]).go(context),
            )),
      ),
    );
  }
}

class PersonScreen extends StatelessWidget {
  const PersonScreen({
    required this.fid,
    required this.pid,
    Key? key,
  }) : super(key: key);

  final String fid;
  final String pid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Person - $fid - $pid'),
      ),
    );
  }
}
