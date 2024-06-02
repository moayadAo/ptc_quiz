import 'dart:convert';

import 'package:flutter/services.dart';

class JsonHelper {
  static Future<String> _loadAsset(String jsonFilePath) async {
    return await rootBundle.loadString(jsonFilePath);
  }

  static Future<Map<String, dynamic>> jsonFileToMap(String jsonFilePath) async {
    String jsonString = await _loadAsset(jsonFilePath);
    Map<String, dynamic> json = jsonDecode(jsonString);
    return json;
  }
}
