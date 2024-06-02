import 'address_model.dart';
import 'departments_model.dart';

class Company {
  int is_active;
  String name;
  Address? address;
  DateTime established;
  List<Department> departments;

  Company({
    required this.is_active,
    required this.name,
    this.address,
    required this.established,
    required this.departments,
  });

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
        is_active: json['is_active'],
        name: json['name'],
        address:
            json['address'] != null ? Address.fromJson(json['address']) : null,
        established: DateTime.parse(json['established']),
        departments: toListOfDepartments(json['departments']) ?? []);
  }
  static List<Department> toListOfDepartments(List<dynamic> list) {
    List<Department> departments =
        list.map((e) => Department.fromJson(e)).toList();
    return departments;
  }

  @override
  String toString() {
    // TODO: implement toString
    return "isActive : $is_active \n name: $name \naddress: $address \nestabl:$established \ndepartment : $departments";
  }
}
