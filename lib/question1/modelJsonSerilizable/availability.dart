import 'package:json_annotation/json_annotation.dart';
part 'availability.g.dart';

@JsonSerializable()
class Availability {
  bool online;
  bool inStore;

  Availability({required this.online, required this.inStore});
  factory Availability.fromJson(Map<String, dynamic> map) =>
      _$AvailabilityFromJson(map);

  Map<String, dynamic> toJson() => _$AvailabilityToJson(this);

  @override
  String toString() {
    return 'Availability{online: $online, inStore: $inStore}';
  }
}
