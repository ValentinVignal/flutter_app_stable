import 'package:flutter/material.dart';

abstract class GoogleMapExampleAppPage extends StatelessWidget {
  const GoogleMapExampleAppPage(this.leading, this.title, {super.key});

  final Widget leading;
  final String title;
}
