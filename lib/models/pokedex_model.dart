import 'dart:developer';

import 'package:pokeapi/repositories/pokedex/pokedex.dart';
import 'package:http/http.dart' as http;

class PokedexModel {
  Future<Pokedex> getPokedex() async {
    var response = await http.get(
        Uri.parse("https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0"));
    Pokedex pokedex = Pokedex.fromJson(response.body);
    pokedex.results?.forEach((value) => {log(value.img!)});
    return pokedex;
  }
}
