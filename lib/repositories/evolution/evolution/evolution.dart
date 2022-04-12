import 'chain.dart';

class Evolution {
  dynamic babyTriggerItem;
  Chain? chain;
  int? id;

  Evolution({this.babyTriggerItem, this.chain, this.id});

  factory Evolution.fromJson(Map<String, dynamic> json) => Evolution(
        babyTriggerItem: json['baby_trigger_item'] as dynamic,
        chain: json['chain'] == null
            ? null
            : Chain.fromJson(json['chain'] as Map<String, dynamic>),
        id: json['id'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'baby_trigger_item': babyTriggerItem,
        'chain': chain?.toJson(),
        'id': id,
      };
}
