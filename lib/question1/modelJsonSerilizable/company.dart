import 'package:json_annotation/json_annotation.dart';

import 'address.dart';
import 'departments.dart';

part 'company.g.dart';

@JsonSerializable()
class Company {
  @JsonKey(name: "is_active")
  int is_active;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "address", includeIfNull: true)
  Address? address;
  @JsonKey(name: "established")
  DateTime established;
  @JsonKey(name: "departments")
  List<Departments> departments;

  Company(
      {required this.is_active,
      required this.name,
      required this.address,
      required this.established,
      required this.departments});

  factory Company.fromJson(Map<String, dynamic> map) => _$CompanyFromJson(map);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);

  @override
  String toString() {
    return 'CompanyParentModel{is_active: $is_active, name: $name, address: $address, established: $established, departments: $departments}';
  }
}
