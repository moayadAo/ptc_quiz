class IdModel {
  int id;

  IdModel({required this.id});
  factory IdModel.fromJson(Map<String, dynamic> json) {
    return IdModel(id: json['id']);
  }
}
