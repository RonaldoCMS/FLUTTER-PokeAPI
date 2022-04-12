import 'package:flutter/material.dart';
import 'package:pokeapi/models/evolution_model.dart';
import 'package:pokeapi/views/app.dart';

void main() async {
  EvolutionModel().getEvolution("pikachu").then((value) {
    value.chain!.evolvesTo?.forEach((element) {
      print(element.species!.name);
      element.evolvesTo?.forEach((newElement) {
        print(newElement.species!.name);
      });
    });
  });
  //runApp(const App());
}
