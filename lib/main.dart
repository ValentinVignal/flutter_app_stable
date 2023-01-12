import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stable/__generated__/schema.ast.gql.dart';
import 'package:flutter_app_stable/graphql/__generated__/pokemons.data.gql.dart';
import 'package:flutter_app_stable/graphql/__generated__/pokemons.req.gql.dart';
import 'package:flutter_app_stable/graphql/__generated__/pokemons.var.gql.dart';
import 'package:gql_exec/src/response.dart';

final client = Client(
  link: Link.function((request, [forward]) {
    return Stream.value(
      Response(
        response: const {},
        data: GPokemonsData((data) {
          data.pokemons = ListBuilder([
            GPokemonsData_pokemons((pokemon) {
              pokemon
                ..id = '1'
                ..name = 'Bulbasaur';
            }),
            GPokemonsData_pokemons((pokemon) {
              pokemon
                ..id = '2'
                ..name = 'Ivysaur';
            }),
            GPokemonsData_pokemons((pokemon) {
              pokemon
                ..id = '3'
                ..name = 'Venusaur';
            }),
          ]);
        }).toJson(),
      ),
    );
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
    return Operation<GPokemonsData, GPokemonsVars>(
      client: client,
      operationRequest: GPokemonsReq(),
      builder: (context, result, _) {
        final pokemons = result?.data?.pokemons ?? BuiltList();

        return Scaffold(
          body: ListView.builder(
            itemCount: pokemons.length,
            itemBuilder: (context, index) {
              final pokemon = pokemons[index];

              return ListTile(
                title: Text(pokemon.name),
                subtitle: Text(pokemon.id),
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: pokemons.isNotEmpty
                ? () {
                    client.cache
                        .evict('${Pokemon.name.value}:${pokemons.first.id}');
                  }
                : null,
            child: const Icon(Icons.remove),
          ),
        );
      },
    );
  }
}
