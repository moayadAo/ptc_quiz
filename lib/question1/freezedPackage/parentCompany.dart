import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model_quiz/question1/freezedPackage/company.dart';

part 'parentCompany.freezed.dart';
part 'parentCompany.g.dart';

@freezed
class ParentCompany with _$ParentCompany {
  const factory ParentCompany({required Company company}) = _ParentCompany;
  factory ParentCompany.fromJson(Map<String, dynamic> json) =>
      _$ParentCompanyFromJson(json);
}
