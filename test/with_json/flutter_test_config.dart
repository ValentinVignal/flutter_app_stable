import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:easy_localization/src/localization.dart';
import 'package:easy_localization/src/translations.dart';
import 'package:flutter/material.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  final content = await File('test/lang.json').readAsString();
  final data = jsonDecode(content) as Map<String, dynamic>;
  Localization.load(
    const Locale('en'),
    translations: Translations(data),
  );
  await testMain();
}
