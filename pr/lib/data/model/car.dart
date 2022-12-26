import 'package:flutter_application_1/domain/entity/engine_entity.dart';
import 'package:flutter_application_1/domain/entity/manufacturer_entity.dart';
import 'package:flutter_application_1/domain/entity/owner_entity.dart';
import 'package:flutter_application_1/domain/entity/role_entity.dart';

import '../../domain/entity/car_entity.dart';

class Car extends CarEntity {
  late int id;
  final String number;
  final String date_of_creation;
  final int cost;
  final String model;
  final int id_engine;
  final int id_owner;
  final int id_manufacturer;
  final int id_mark;
  Car({
    required this.number,
    required this.date_of_creation,
    required this.cost,
    required this.model,
    required this.id_engine,
    required this.id_owner,
    required this.id_manufacturer,
    required this.id_mark,
  }) : super(
          number: number,
          date_of_creation: date_of_creation,
          cost: cost,
          model: model,
          id_engine: id_engine,
          id_owner: id_owner,
          id_manufacturer: id_manufacturer,
          id_mark: id_mark,
        );

  Map<String, dynamic> toMap() {
    return {
      'number': number,
      'date_of_creation': date_of_creation,
      'cost': cost,
      'model': model,
      'id_engine': id_engine,
      'id_owner': id_owner,
      'id_manufacturer': id_manufacturer,
      'id_mark': id_mark,
    };
  }

  factory Car.toFromMap(Map<String, dynamic> json) {
    return Car(
      number: json['number'],
      date_of_creation: json['date_of_creation'],
      cost: json['cost'],
      model: json['model'],
      id_engine: json['id_engine'],
      id_owner: json['id_owner'],
      id_manufacturer: json['id_manufacturer'],
      id_mark: json['id_mark'],
    );
  }
}
