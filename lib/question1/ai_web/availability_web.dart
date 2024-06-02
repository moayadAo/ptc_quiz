class Availability {
  bool online;
  bool inStore;

  Availability({
    required this.online,
    required this.inStore,
  });

  factory Availability.fromJson(Map<String, dynamic> json) => Availability(
        online: json["online"],
        inStore: json["inStore"],
      );

  Map<String, dynamic> toJson() => {
        "online": online,
        "inStore": inStore,
      };
}
