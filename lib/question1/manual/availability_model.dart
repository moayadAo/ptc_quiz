class Availability {
  bool online;
  bool inStore;
  Availability({required this.online, required this.inStore});

  factory Availability.fromJson(Map<String, dynamic> json) {
    return Availability(
        online: toBool(json["online"]), inStore: toBool(json["inStore"]));
  }

  Map<String, dynamic> toJson() {
    return {
      "online": online,
      "inStore": inStore,
    };
  }

  static bool toBool(dynamic value) {
    if (value is bool) {
      return value;
    } else if (value is String) {
      return value.toLowerCase() == true;
    } else {
      throw FormatException('value = $value');
    }
  }
}
