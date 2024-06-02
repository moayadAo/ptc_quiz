import 'availability_model.dart';

class Department {
  String deptId;
  String name;
  String manager;
  double budget;
  String meeting_time;
  Availability? availability;
  int? year;
  Department({
    required this.deptId,
    required this.name,
    required this.manager,
    required this.budget,
    required this.meeting_time,
    this.year,
    this.availability,
  });
  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
        deptId: json['deptId'],
        name: json['name'],
        manager: json['manager'],
        budget: json['budget'],
        meeting_time: json['meeting_time'],
        year: json['year'],
        availability: json['availability'] != null
            ? Availability.fromJson(json['availability'])
            : null);
  }
  Map<String, dynamic> toJson() {
    return {
      "deptId": deptId,
      "name": name,
      "manager": manager,
      "budget": budget,
      "year": year,
      "availability": availability != null ? availability!.toJson() : null,
      "meeting_time": meeting_time
    };
  }

  @override
  String toString() {
    return "deptId : $deptId  , name : $name , manager : $manager, budget : $budget";
  }
}
