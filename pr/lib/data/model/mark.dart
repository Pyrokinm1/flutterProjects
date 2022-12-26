import 'package:flutter_application_1/domain/entity/engine_entity.dart';
import 'package:flutter_application_1/domain/entity/mark_entity.dart';
import 'package:flutter_application_1/domain/entity/role_entity.dart';

class Mark extends MarkEntity {
  late int id;
  final String car_mark;

  Mark({required this.car_mark}) : super(car_mark: car_mark);

  Map<String, dynamic> toMap() {
    return {'car_mark': car_mark};
  }

  factory Mark.toFromMap(Map<String, dynamic> json) {
    return Mark(car_mark: json['car_mark']);
  }
}
