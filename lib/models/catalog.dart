
import 'package:flutter/material.dart';
class CatalogModel {
  static List<String> itemNames = [
    'Pav Bhaji',
    'Pani Puri',
    'Samosa',
    'Vada Pav',
    'Aloo Paratha',
    'Pizza',
    'Veg Hakka Noodles',
    'Chicken Hakka Noodles',
    'Paneer Momos',
    'Chicken Momos',
    'White Sauce Pasta',
    'Red Sauce Pasta',
  ];

  Item getById(int id) => Item(id, itemNames[id % itemNames.length]);

  Item getByPosition(int position) {
    return getById(position);
  }
}

@immutable
class Item {
  final int id;
  final String name;
  final Color color;
  final int price = 30;

  Item(this.id, this.name)
      : color = Colors.primaries[id % Colors.primaries.length];

  @override
  int get hashCode => id;

  @override
  bool operator == (Object other) => other is Item && other.id == id;
}
