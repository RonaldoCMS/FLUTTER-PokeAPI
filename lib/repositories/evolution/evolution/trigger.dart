class Trigger {
  String? name;
  String? url;

  Trigger({this.name, this.url});

  factory Trigger.fromJson(Map<String, dynamic> json) => Trigger(
        name: json['name'] as String?,
        url: json['url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'url': url,
      };
}
