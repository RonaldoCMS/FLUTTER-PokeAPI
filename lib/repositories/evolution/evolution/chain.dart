import 'evolves_to.dart';
import 'species.dart';

class Chain {
  List<dynamic>? evolutionDetails;
  List<EvolvesTo>? evolvesTo;
  bool? isBaby;
  Species? species;

  Chain({this.evolutionDetails, this.evolvesTo, this.isBaby, this.species});

  factory Chain.fromJson(Map<String, dynamic> json) => Chain(
        evolutionDetails: json['evolution_details'] as List<dynamic>?,
        evolvesTo: (json['evolves_to'] as List<dynamic>?)
            ?.map((e) => EvolvesTo.fromJson(e as Map<String, dynamic>))
            .toList(),
        isBaby: json['is_baby'] as bool?,
        species: json['species'] == null
            ? null
            : Species.fromJson(json['species'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'evolution_details': evolutionDetails,
        'evolves_to': evolvesTo?.map((e) => e.toJson()).toList(),
        'is_baby': isBaby,
        'species': species?.toJson(),
      };
}
