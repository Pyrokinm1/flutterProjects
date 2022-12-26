import 'package:flutter_application_1/domain/entity/engine_entity.dart';
import 'package:flutter_application_1/domain/entity/role_entity.dart';

class Engine extends EngineEntity {
  late int id;
  final String engine_power;
  final String date_of_creation;
  final String engine_series;
  Engine(
      {required this.engine_power,
      required this.date_of_creation,
      required this.engine_series})
      : super(
            engine_power: engine_power,
            date_of_creation: date_of_creation,
            engine_series: engine_series);

  Map<String, dynamic> toMap() {
    return {
      'engine_power': engine_power,
      'date_of_creation': date_of_creation,
      'engine_series': engine_series
    };
  }

  factory Engine.toFromMap(Map<String, dynamic> json) {
    return Engine(
        engine_power: json['engine_power'],
        date_of_creation: json['date_of_creation'],
        engine_series: json['engine_series']);
  }
}
