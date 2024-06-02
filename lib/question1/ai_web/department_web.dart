import 'package:model_quiz/question1/ai_web/availability_web.dart';

class Department {
  String deptId;
  String name;
  String manager;
  int budget;
  int? year;
  Availability? availability;
  String meetingTime;

  Department({
    required this.deptId,
    required this.name,
    required this.manager,
    required this.budget,
    this.year,
    this.availability,
    required this.meetingTime,
  });

  factory Department.fromJson(Map<String, dynamic> json) => Department(
        deptId: json["deptId"],
        name: json["name"],
        manager: json["manager"],
        budget: json["budget"],
        year: json["year"],
        availability: json["availability"] == null
            ? null
            : Availability.fromJson(json["availability"]),
        meetingTime: json["meeting_time"],
      );

  Map<String, dynamic> toJson() => {
        "deptId": deptId,
        "name": name,
        "manager": manager,
        "budget": budget,
        "year": year,
        "availability": availability?.toJson(),
        "meeting_time": meetingTime,
      };
  @override
  String toString() {
    return "deptId : $deptId  , name : $name , manager : $manager, budget : $budget";
  }
}
