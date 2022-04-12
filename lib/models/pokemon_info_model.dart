import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokeapi/repositories/pokemon/pokemon.dart';
import 'package:pokeapi/views/pokemon_view.dart';

import '../repositories/pokedex/result.dart';
import 'package:http/http.dart' as http;

class PokemonInfoModel {
  Future<void> getPokemonInfo(Result result, BuildContext context) async {
    var response = await http
        .get(Uri.parse("https://pokeapi.co/api/v2/pokemon/${result.name}"));
    Pokemon pokemon = Pokemon.fromJson(jsonDecode(response.body));
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PokemonView(pokemon: pokemon),
      ),
    );
  }
}
