import 'package:flutter_application_1/domain/entity/engine_entity.dart';
import 'package:flutter_application_1/domain/entity/manufacturer_entity.dart';
import 'package:flutter_application_1/domain/entity/owner_entity.dart';
import 'package:flutter_application_1/domain/entity/role_entity.dart';

class Owner extends OwnerEntity {
  late int id;
  final String surname;
  final String name;
  final String patronymic;
  final String date_of_acquzition;
  final String date_of_selling;
  Owner({
    required this.surname,
      required this.name,
      required this.patronymic,
      required this.date_of_acquzition,
      required this.date_of_selling}
  ) : super(
          surname: surname,
          name: name,
          patronymic:patronymic,
          date_of_acquzition:date_of_acquzition,
          date_of_selling:date_of_selling
        );

  Map<String, dynamic> toMap() {
    return {'surname': surname, 'name': name,'patronymic': patronymic,'date_of_acquzition': date_of_acquzition,'date_of_selling': date_of_selling};
  }

  factory Owner.toFromMap(Map<String, dynamic> json) {
    return Owner(
        surname: json['surname'], name: json['name'],patronymic: json['patronymic'],date_of_acquzition: json['date_of_acquzition'],date_of_selling: json['date_of_selling']);
  }
}
