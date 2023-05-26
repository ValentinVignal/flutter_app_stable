import 'package:flutter_app_stable/graphql/__generated__/fragment.pokemon.data.gql.dart';

void main() {
  // I want something that matches the graphql schema type `Pokemon`.
  final pokemon = GPokemonFragmentData(
    (pokemon) => pokemon
      ..id = 'id'
      ..name = 'name'
      ..type = 'type',
  );
}
