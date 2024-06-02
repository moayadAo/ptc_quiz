import 'package:faker/src/faker.dart';
import 'package:flutter/foundation.dart';

class Categorye {
  List<String> items = [];

  // List<String> get items {
  //   if (_items == null) {
  //     for (int i = 0; i < 1000; i++) {
  //       _items!.add(faker.lorem.words(3).join(' '));
  //     }
  //   }
  //   return _items!;
  // }
  static final Categorye _category = Categorye._internal();

  Categorye._internal();
  factory Categorye() {
    return _category;
  }

  getCategories() {
    if (items.isEmpty) {
      for (int i = 0; i < 1000; i++) items.add(faker.lorem.words(3).join(' '));
    }
    return items;
  }
}
