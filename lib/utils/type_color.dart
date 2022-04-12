import 'package:flutter/material.dart';

class TypeColor {
  static Color color(String type) {
    switch (type) {
      case "grass":
        return Colors.green;
      case "fire":
        return Colors.red;
      case "water":
        return Colors.blue;
      case "bug":
        return Colors.green.shade400;
      case "normal":
        return Colors.grey;
      case "eletric":
        return Colors.yellow;
      case "poison":
        return Colors.purple;
      case "fairy":
        return Colors.pink;
      case "fighting":
        return Colors.brown.shade50;
      case "rock":
        return Colors.brown;
      case "ghost":
        return Colors.purple.shade50;
      case "phychic":
        return Colors.pink.shade400;
      case "dragon":
        return Colors.orange;
      case 'ice':
        return Colors.blue.shade300;
      default:
        return Colors.tealAccent;
    }
  }
}
