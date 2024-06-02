import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:model_quiz/helper/json_helper.dart';

class Language {
  static final Language _language = Language._internal();
  List<String> _items = [];

  Language._internal();

  factory Language() {
    return _language;
  }
  Future<List<String>> getLanguages() async {
    if (_items.isEmpty) {
      print('--------------- in');
      String filePath = "assest/languages.json";
      String jsonString = await rootBundle.loadString(filePath);
      List<dynamic> item = await json.decode(jsonString);
      _items = item.map((e) => e.toString()).toList();
      // print(_items);
    }
    return _items;
  }
}
