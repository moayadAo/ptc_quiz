import 'package:faker/src/faker.dart';

class Venues {
  static final Venues _venues = Venues._internal();
  List<String> _items = [];
  Venues._internal();
  factory Venues() {
    return _venues;
  }
  getVenus() {
    if (_items.isEmpty) {
      for (int i = 0; i < 1000; i++) _items.add(faker.lorem.words(2).join(' '));
    }
    return _items;
  }
}
