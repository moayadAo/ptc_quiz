import 'package:json_annotation/json_annotation.dart';

import 'availability.dart';
part 'departments.g.dart';

@JsonSerializable()
class Departments {
  String deptId;
  String name;
  String manager;
  double budget;
  int? year;
  Availability? availability;
  String meeting_time;

  Departments(
      {required this.deptId,
      required this.name,
      required this.manager,
      required this.budget,
      required this.year,
      required this.availability,
      required this.meeting_time});

  factory Departments.fromJson(Map<String, dynamic> map) =>
      _$DepartmentsFromJson(map);

  Map<String, dynamic> toJson() => _$DepartmentsToJson(this);

  @override
  String toString() {
    return 'Departments{deptId: $deptId, name: $name, manager: $manager, budget: $budget, year: $year, availability: $availability, meeting_time: $meeting_time}';
  }
}
