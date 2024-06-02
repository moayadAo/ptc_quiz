import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'availability.freezed.dart';
part 'availability.g.dart';

@freezed
class Availability with _$Availability {
  const factory Availability({required bool online, required bool instore}) =
      _Availability;
  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);
}
