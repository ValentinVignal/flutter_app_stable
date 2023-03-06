import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stable/__generated__/schema.ast.gql.dart';
import 'package:flutter_app_stable/graphql/__generated__/nested_pokemons.data.gql.dart';
import 'package:flutter_app_stable/graphql/__generated__/nested_pokemons.req.gql.dart';
import 'package:flutter_app_stable/graphql/__generated__/nested_pokemons.var.gql.dart';
import 'package:flutter_app_stable/graphql/__generated__/pokemons.data.gql.dart';
import 'package:flutter_app_stable/graphql/__generated__/pokemons.req.gql.dart';
import 'package:flutter_app_stable/graphql/__generated__/pokemons.var.gql.dart';
import 'package:gql_exec/src/response.dart';

final client = Client(
  link: Link.function((request, [forward]) {
    if (request.operation.operationName == 'Pokemons') {
      return Stream.value(
        Response(
          response: const {},
          data: GPokemonsData((data) {
            data.pokemons = ListBuilder(List.generate(
                40,
                (i) => GPokemonsData_pokemons(
                      (pokemon) => pokemon
                        ..id = '$i'
                        ..name = 'Pokemon $i',
                    )));
          }).toJson(),
        ),
      );
    } else {
      return Stream.value(
        Response(
          response: const {},
          data: GNestedPokemonsData((data) {
            data.nestedPokemons = ListBuilder(List.generate(
                40,
                (i) => GNestedPokemonsData_nestedPokemons(
                      (pokemon) => pokemon.nested
                        ..id = '$i'
                        ..name = 'Pokemon $i',
                    )));
          }).toJson(),
        ),
      );
    }
  }),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Operation<GPokemonsData, GPokemonsVars>(
              client: client,
              operationRequest: GPokemonsReq(),
              builder: (context, result, _) {
                final pokemons = result?.data?.pokemons ?? BuiltList();

                return ListView.builder(
                  itemCount: pokemons.length,
                  itemBuilder: (context, index) {
                    final pokemon = pokemons[index];

                    return ListTile(
                      title: Text(pokemon.name),
                      subtitle: Text(pokemon.id),
                    );
                  },
                );
              },
            ),
          ),
          Expanded(
            child: Operation<GNestedPokemonsData, GNestedPokemonsVars>(
              client: client,
              operationRequest: GNestedPokemonsReq(),
              builder: (context, result, _) {
                final pokemons = result?.data?.nestedPokemons ?? BuiltList();

                return ListView.builder(
                  itemCount: pokemons.length,
                  itemBuilder: (context, index) {
                    final pokemon = pokemons[index];

                    return ListTile(
                      title: Text(pokemon.nested.name),
                      subtitle: Text(pokemon.nested.id),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: const FAB(),
    );
  }
}

class FAB extends StatefulWidget {
  const FAB({super.key});

  @override
  State<FAB> createState() => _FABState();
}

class _FABState extends State<FAB> {
  int id = 0;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        client.cache.evict('${Pokemon.name.value}:$id');
        id++;
      },
      child: const Icon(Icons.remove),
    );
  }
}
