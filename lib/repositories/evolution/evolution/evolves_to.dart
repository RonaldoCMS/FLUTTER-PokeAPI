import 'evolution_detail.dart';
import 'evolves_to.dart';
import 'species.dart';

class EvolvesTo {
  List<EvolutionDetail>? evolutionDetails;
  List<EvolvesTo>? evolvesTo;
  bool? isBaby;
  Species? species;

  EvolvesTo({
    this.evolutionDetails,
    this.evolvesTo,
    this.isBaby,
    this.species,
  });

  factory EvolvesTo.fromJson(Map<String, dynamic> json) => EvolvesTo(
        evolutionDetails: (json['evolution_details'] as List<dynamic>?)
            ?.map((e) => EvolutionDetail.fromJson(e as Map<String, dynamic>))
            .toList(),
        evolvesTo: (json['evolves_to'] as List<dynamic>?)
            ?.map((e) => EvolvesTo.fromJson(e as Map<String, dynamic>))
            .toList(),
        isBaby: json['is_baby'] as bool?,
        species: json['species'] == null
            ? null
            : Species.fromJson(json['species'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'evolution_details': evolutionDetails?.map((e) => e.toJson()).toList(),
        'evolves_to': evolvesTo?.map((e) => e.toJson()).toList(),
        'is_baby': isBaby,
        'species': species?.toJson(),
      };
}
