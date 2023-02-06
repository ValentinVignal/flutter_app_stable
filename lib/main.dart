import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stable/graphql/__generated__/pokemons_query.data.gql.dart';
import 'package:flutter_app_stable/graphql/__generated__/pokemons_query.req.gql.dart';
import 'package:flutter_app_stable/graphql/__generated__/pokemons_query.var.gql.dart';
import "package:gql_exec/gql_exec.dart" hide Operation;

void main() {
  runApp(const MyApp());
}

var count = 0;

Iterable<GPokemonsData_pokemons> generatePokemon() sync* {
  for (var i = 0; i < count; i++) {
    yield GPokemonsData_pokemons((pokemon) => pokemon
      ..id = 'pokemonId-$i'
      ..name = 'PokemonName$i');
  }
}

final link = Link.function((request, [forward]) {
  count++;
  print('request $count');
  return Stream.value(Response(
    response: const {},
    data: GPokemonsData(
      (data) => data
        ..pokemons = ListBuilder<GPokemonsData_pokemons>(
          generatePokemon(),
        ),
    ).toJson(),
  ));
});

final client = Client(
  link: link,
  defaultFetchPolicies: const {
    OperationType.query: FetchPolicy.NetworkOnly,
  },
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: const [
            Expanded(
              child: SubWidget(),
            ),
            Expanded(
              child: SubWidget(),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Does nothing. Add a request ID here and to the
            // `Operation.operationRequest` and it ref-etches the list of
            // pokemons.
            client.requestController.add(
              GPokemonsReq((req) => req.requestId = 'pokemons'),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class SubWidget extends StatelessWidget {
  const SubWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Operation<GPokemonsData, GPokemonsVars>(
      // Give an id to the request here to make it work.
      operationRequest: GPokemonsReq((req) => req.requestId = 'pokemons'),
      client: client,
      builder: (context, response, error) {
        return ListView.builder(
          itemCount: response?.data?.pokemons.length ?? 0,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(response!.data!.pokemons[index].name),
            );
          },
        );
      },
    );
  }
}
