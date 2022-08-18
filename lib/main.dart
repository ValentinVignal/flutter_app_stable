import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter_app_stable/__generated__/schema.schema.gql.dart';
import 'package:flutter_app_stable/graphql/__generated__/pokemon_query.data.gql.dart';
import 'package:flutter_app_stable/graphql/__generated__/pokemon_query.req.gql.dart';

void main() {
  final cache = Cache(
    possibleTypes: possibleTypesMap,
  );
  final dataInCache = <GPokemonsData>[];
  cache.writeQuery(GPokemonsReq(), GPokemonsData((data) {
    data.pokemons = ListBuilder();
  }));
  dataInCache.add(cache.readQuery(GPokemonsReq())!);
  print('step 1');
  print(dataInCache);
  cache.writeQuery(GPokemonsReq(), GPokemonsData((data) {
    data.pokemons.add(
      GPokemonsData_pokemons((pokemon) {
        pokemon
          ..id = 'pikachu'
          ..name = 'Pikachu';
      }),
    );
  }));
  dataInCache.add(cache.readQuery(GPokemonsReq())!);
  print('step 2');
  print(dataInCache);
}
