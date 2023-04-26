// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Material(
        child: Center(
          child: PopupMenuButton<void>(
            position: PopupMenuPosition.under,
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<Object>>[
                const PopupMenuItem<Object>(
                  enabled: false,
                  child: Text('disabled'),
                ),
                const PopupMenuDivider(),
                PopupMenuItem<Object>(
                  onTap: () {},
                  child: const Text('enabled'),
                ),
              ];
            },
            child: Container(
              height: 30,
              width: 30,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
