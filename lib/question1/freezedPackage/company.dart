import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model_quiz/question1/freezedPackage/department.dart';
import 'package:model_quiz/question1/freezedPackage/address.dart';

part 'company.freezed.dart';
part 'company.g.dart';

@freezed
class Company with _$Company {
  const factory Company(
      {required int is_active,
      required String name,
      Address? address,
      required DateTime established,
      required List<Department> departments}) = _Company;
  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}
