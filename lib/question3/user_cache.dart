import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:faker/faker.dart';
import 'user.dart';

class CacheUser {
  static final CacheUser _instance = CacheUser._internal();
  factory CacheUser() => _instance;
  CacheUser._internal();

  List<int> _userIds = [];
  final Map<int, User> _userCache = {};

  Future<List<int>> loadUserIds() async {
    if (_userIds.isEmpty) {
      String path = "assest/usrs.json";
      String jsonStr = await rootBundle.loadString(path);
      List<dynamic> jsonResponse = jsonDecode(jsonStr);
      _userIds = jsonResponse.map<int>((e) => e['id']).toList();
    }
    return _userIds;
  }

  User? getUserById(int id) {
    if (_userCache.containsKey(id)) {
      return _userCache[id];
    } else {
      final user = User(
        id: id,
        firstName: faker.person.firstName(),
        lastName: faker.person.lastName(),
        about: faker.lorem.sentence(),
        image: faker.image.image(),
      );
      _userCache[id] = user;
      return user;
    }
  }
}
