import 'package:json_annotation/json_annotation.dart';

import 'company.dart';
part 'company_parent_model.g.dart';

@JsonSerializable()
class CompanyParentModel {
  Company company;
  CompanyParentModel({required this.company});

  factory CompanyParentModel.fromJson(Map<String, dynamic> map) =>
      _$CompanyParentModelFromJson(map);

  Map<String, dynamic> toJson() => _$CompanyParentModelToJson(this);

  @override
  String toString() {
    return '$company';
  }
}
