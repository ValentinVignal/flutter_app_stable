import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/database.dart';

class SeedButton extends StatelessWidget {
  const SeedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        await Database.instance.projectDao.seed();
        await Database.instance.taskDao.seed();
      },
      icon: const Icon(Icons.grass),
    );
  }
}
