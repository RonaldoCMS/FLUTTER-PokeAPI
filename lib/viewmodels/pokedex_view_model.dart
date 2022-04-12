import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pokeapi/models/pokedex_model.dart';
import 'package:pokeapi/models/pokemon_info_model.dart';
import 'package:pokeapi/repositories/pokedex/pokedex.dart';
import 'package:pokeapi/repositories/pokedex/result.dart';

class PokedexViewModel {
  final PokedexModel _pokedexmodel = PokedexModel();
  final PokemonInfoModel _pokemonInfoModel = PokemonInfoModel();

  Future<Pokedex> getPokedex(BuildContext context) async {
    try {
      var pokemons = await _pokedexmodel.getPokedex();
      return pokemons;
    } catch (error) {
      return Future.error("error");
    }
  }

  Future<void> getPokemonInfo(Result result, BuildContext context) async {
    await _pokemonInfoModel.getPokemonInfo(result, context);
  }
}
