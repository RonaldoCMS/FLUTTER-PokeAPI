import 'dart:convert';

class Result {
  String? name;
  String? url;
  String? img;

  Result({this.name, this.url, this.img});

  factory Result.fromMap(Map<String, dynamic> data) {
    final regexp = RegExp(r'/[0-9]+');
    final match = regexp.firstMatch(data['url'] as String);

    return Result(
        name: data['name'] as String?,
        url: data['url'] as String?,
        img:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon${match?.group(0)}.png");
  }

  Map<String, dynamic> toMap() => {
        'name': name,
        'url': url,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Result].
  factory Result.fromJson(String data) {
    return Result.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Result] to a JSON string.
  String toJson() => json.encode(toMap());
}
