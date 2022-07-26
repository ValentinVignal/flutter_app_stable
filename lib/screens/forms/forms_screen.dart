import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/database.dart';
import 'package:flutter_app_stable/database/entities/form/form_dao.dart';
import 'package:flutter_app_stable/database/entities/form/form_status.dart';
import 'package:flutter_app_stable/router/pages.dart';
import 'package:flutter_app_stable/router/router.dart';

class FormsScreen extends StatelessWidget {
  const FormsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const FormList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Database.instance.formDao.insert();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class FormList extends StatefulWidget {
  const FormList({Key? key}) : super(key: key);

  @override
  State<FormList> createState() => _FormListState();
}

class _FormListState extends State<FormList> {
  final _formsStream = Database.instance.formDao.watch();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Iterable<FormWithProject>>(
      stream: _formsStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: ErrorWidget(snapshot.error!));
        } else if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            final formWithProject = snapshot.data!.elementAt(index);
            final theme = Theme.of(context);
            return ListTile(
              leading: DecoratedBox(
                decoration: BoxDecoration(
                  color: formWithProject.form.status.color(theme),
                  shape: BoxShape.circle,
                ),
                child: const SizedBox.square(dimension: 8),
              ),
              title: Text(formWithProject.form.name),
              subtitle: Text(
                  '${formWithProject.form.id} - ${formWithProject.form.status.name} - Project: ${formWithProject.project.name} (${formWithProject.form.projectId})'),
              onTap: () {
                final page = FormRoute(id: formWithProject.form.id.toString());
                router.push(page.location, extra: page);
              },
            );
          },
        );
      },
    );
  }
}
