import 'dart:convert';

import 'package:pokeapi/repositories/pokedex/result.dart';

class Pokedex {
  int? count;
  dynamic next;
  dynamic previous;
  List<Result>? results;

  Pokedex({this.count, this.next, this.previous, this.results});

  factory Pokedex.fromMap(Map<String, dynamic> data) => Pokedex(
        count: data['count'] as int?,
        next: data['next'] as dynamic,
        previous: data['previous'] as dynamic,
        results: (data['results'] as List<dynamic>?)
            ?.map((e) => Result.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'count': count,
        'next': next,
        'previous': previous,
        'results': results?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Pokedex].
  factory Pokedex.fromJson(String data) {
    return Pokedex.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Pokedex] to a JSON string.
  String toJson() => json.encode(toMap());
}
