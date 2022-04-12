import 'package:flutter/material.dart';
import 'package:pokeapi/repositories/pokemon/pokemon.dart';
import 'package:pokeapi/widgets/type_widget.dart';

class PokemonView extends StatelessWidget {
  final Pokemon pokemon;
  late List<TypeWidget> typesPokemon;
  PokemonView({required this.pokemon, Key? key}) : super(key: key) {
    typesPokemon =
        pokemon.types!.map((e) => TypeWidget(type: e.type!.name!)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CircleAvatar(
              radius: 50, child: Image.network(pokemon.sprites!.frontDefault!)),
          Text("Height " + pokemon.height.toString() + " cm"),
          Row(children: typesPokemon),
          TypeWidget(type: pokemon.types![0].type!.name!),
          Text("" + pokemon.species!.name.toString()),
          Text(pokemon.name.toString()),
          Text(pokemon.abilities![0].ability!.name!)
        ],
      ),
    );
  }
}
