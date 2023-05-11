import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stable/graphql/__generated__/query.workspace_1.data.gql.dart';
import 'package:flutter_app_stable/graphql/__generated__/query.workspace_1.req.gql.dart';
import 'package:flutter_app_stable/graphql/__generated__/query.workspace_2.data.gql.dart';
import 'package:flutter_app_stable/graphql/__generated__/query.workspace_2.req.gql.dart';
import 'package:gql_exec/src/response.dart';

void main() {
  runApp(const MyApp());
}

var count = 0;

final link = Link.function(
  (request, [_]) {
    if (request.operation.operationName == 'Workspace1') {
      return Stream.value(
        Response(
          response: const {},
          data: GWorkspace1Data(
            (b) => b
              ..workspace.update(
                (b) => b
                  ..name = 'workspace$count'
                  ..description1 = 'description$count',
              ),
          ).toJson(),
        ),
      );
    } else {
      return Stream.value(
        Response(
          response: const {},
          data: GWorkspace2Data(
            (b) => b
              ..workspace.update(
                (b) => b
                  ..name = 'workspace$count'
                  ..description2 = 'description$count',
              ),
          ).toJson(),
        ),
      );
    }
  },
);

final client = Client(link: link, defaultFetchPolicies: {
  OperationType.query: FetchPolicy.CacheAndNetwork,
}, typePolicies: {
  'Workspace': TypePolicy(
    keyFields: {},
  ),
});

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: const [
            Expanded(
              child: Workspace1Widget(),
            ),
            Expanded(
              child: Workspace2Widget(),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            count++;
            client.requestController.add(GWorkspace1Req());
          },
        ),
      ),
    );
  }
}

class Workspace1Widget extends StatelessWidget {
  const Workspace1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Operation(
      operationRequest: GWorkspace1Req(),
      client: client,
      builder: (context, response, error) {
        return WorkspaceWidget(
          name: response?.data?.workspace.name ?? '',
          description1: response?.data?.workspace.description1 ?? '',
        );
      },
    );
  }
}

class Workspace2Widget extends StatelessWidget {
  const Workspace2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Operation(
      operationRequest: GWorkspace2Req(),
      client: client,
      builder: (context, response, error) {
        return WorkspaceWidget(
          name: response?.data?.workspace.name ?? '',
          description2: response?.data?.workspace.description2 ?? '',
        );
      },
    );
  }
}

class WorkspaceWidget extends StatelessWidget {
  const WorkspaceWidget({
    required this.name,
    this.description1,
    this.description2,
    super.key,
  });

  final String name;
  final String? description1;
  final String? description2;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text('name: $name'),
        Text('description1: $description1'),
        Text('description2: $description2'),
      ],
    );
  }
}
