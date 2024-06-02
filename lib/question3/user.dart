import 'package:flutter/material.dart';

class User {
  int id;
  String firstName;
  String lastName;
  String about;
  String image;
  User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.about,
      required this.image});
  String fullName() {
    return '$firstName $lastName';
  }
}
