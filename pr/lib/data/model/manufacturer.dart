import 'package:flutter_application_1/domain/entity/engine_entity.dart';
import 'package:flutter_application_1/domain/entity/manufacturer_entity.dart';
import 'package:flutter_application_1/domain/entity/role_entity.dart';

class Manufacturer extends ManufacturerEntity {
  late int id;
  final String country;
  final String date_of_creation;
  Manufacturer({
    required this.country,
    required this.date_of_creation,
  }) : super(
          country: country,
          date_of_creation: date_of_creation,
        );

  Map<String, dynamic> toMap() {
    return {'country': country, 'date_of_creation': date_of_creation};
  }

  factory Manufacturer.toFromMap(Map<String, dynamic> json) {
    return Manufacturer(
        country: json['country'], date_of_creation: json['date_of_creation']);
  }
}
