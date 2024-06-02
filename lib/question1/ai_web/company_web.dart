import 'package:model_quiz/question1/ai_web/address_web.dart';
import 'package:model_quiz/question1/ai_web/department_web.dart';

class Company {
  int isActive;
  String name;
  Address? address;
  DateTime established;
  List<Department> departments;

  Company({
    required this.isActive,
    required this.name,
    this.address,
    required this.established,
    required this.departments,
  });

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        isActive: json["is_active"],
        name: json["name"],
        address:
            json['address'] != null ? Address.fromJson(json["address"]) : null,
        established: DateTime.parse(json["established"]),
        departments: List<Department>.from(
                json["departments"].map((x) => Department.fromJson(x))) ??
            [],
      );

  Map<String, dynamic> toJson() => {
        "is_active": isActive,
        "name": name,
        "address": address != null ? address!.toJson() : null,
        "established": established.toIso8601String(),
        "departments": List<dynamic>.from(departments.map((x) => x.toJson())),
      };
  @override
  String toString() {
    return "isActive : $isActive \n name: $name \naddress: $address \nestabl:$established \ndepartment : $departments";
  }
}
