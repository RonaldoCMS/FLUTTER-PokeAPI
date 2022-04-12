import 'trigger.dart';

class EvolutionDetail {
  dynamic gender;
  dynamic heldItem;
  dynamic item;
  dynamic knownMove;
  dynamic knownMoveType;
  dynamic location;
  dynamic minAffection;
  dynamic minBeauty;
  dynamic minHappiness;
  int? minLevel;
  bool? needsOverworldRain;
  dynamic partySpecies;
  dynamic partyType;
  dynamic relativePhysicalStats;
  String? timeOfDay;
  dynamic tradeSpecies;
  Trigger? trigger;
  bool? turnUpsideDown;

  EvolutionDetail({
    this.gender,
    this.heldItem,
    this.item,
    this.knownMove,
    this.knownMoveType,
    this.location,
    this.minAffection,
    this.minBeauty,
    this.minHappiness,
    this.minLevel,
    this.needsOverworldRain,
    this.partySpecies,
    this.partyType,
    this.relativePhysicalStats,
    this.timeOfDay,
    this.tradeSpecies,
    this.trigger,
    this.turnUpsideDown,
  });

  factory EvolutionDetail.fromJson(Map<String, dynamic> json) {
    return EvolutionDetail(
      gender: json['gender'] as dynamic,
      heldItem: json['held_item'] as dynamic,
      item: json['item'] as dynamic,
      knownMove: json['known_move'] as dynamic,
      knownMoveType: json['known_move_type'] as dynamic,
      location: json['location'] as dynamic,
      minAffection: json['min_affection'] as dynamic,
      minBeauty: json['min_beauty'] as dynamic,
      minHappiness: json['min_happiness'] as dynamic,
      minLevel: json['min_level'] as int?,
      needsOverworldRain: json['needs_overworld_rain'] as bool?,
      partySpecies: json['party_species'] as dynamic,
      partyType: json['party_type'] as dynamic,
      relativePhysicalStats: json['relative_physical_stats'] as dynamic,
      timeOfDay: json['time_of_day'] as String?,
      tradeSpecies: json['trade_species'] as dynamic,
      trigger: json['trigger'] == null
          ? null
          : Trigger.fromJson(json['trigger'] as Map<String, dynamic>),
      turnUpsideDown: json['turn_upside_down'] as bool?,
    );
  }

  Map<String, dynamic> toJson() => {
        'gender': gender,
        'held_item': heldItem,
        'item': item,
        'known_move': knownMove,
        'known_move_type': knownMoveType,
        'location': location,
        'min_affection': minAffection,
        'min_beauty': minBeauty,
        'min_happiness': minHappiness,
        'min_level': minLevel,
        'needs_overworld_rain': needsOverworldRain,
        'party_species': partySpecies,
        'party_type': partyType,
        'relative_physical_stats': relativePhysicalStats,
        'time_of_day': timeOfDay,
        'trade_species': tradeSpecies,
        'trigger': trigger?.toJson(),
        'turn_upside_down': turnUpsideDown,
      };
}
