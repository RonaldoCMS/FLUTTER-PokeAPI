class NameUrl {
  String? name;
  String? url;

  NameUrl({this.name, this.url});

  factory NameUrl.fromJson(Map<String, dynamic> json) => NameUrl(
        name: json['name'] as String?,
        url: json['url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'url': url,
      };
}
