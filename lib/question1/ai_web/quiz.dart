import 'package:model_quiz/question1/ai_web/company_web.dart';

class Quiz {
  Company company;

  Quiz({
    required this.company,
  });

  factory Quiz.fromJson(Map<String, dynamic> json) => Quiz(
        company: Company.fromJson(json["company"]),
      );

  Map<String, dynamic> toJson() => {
        "company": company.toJson(),
      };
  @override
  String toString() {
    // TODO: implement toString
    return 'company : $company';
  }
}
