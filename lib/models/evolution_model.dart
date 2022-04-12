import 'dart:convert';
import 'dart:developer';

import 'package:pokeapi/repositories/evolution/evolution/evolution.dart';

import 'package:http/http.dart' as http;

class EvolutionModel {
  Future<Evolution> getEvolution(String id) async {
    var response = await http
        .get(Uri.parse("https://pokeapi.co/api/v2/evolution-chain/${3}/"));
    Evolution evolution = Evolution.fromJson(jsonDecode(response.body));

    return evolution;
  }
}
