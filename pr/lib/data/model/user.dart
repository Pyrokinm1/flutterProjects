import 'package:flutter_application_1/domain/entity/engine_entity.dart';
import 'package:flutter_application_1/domain/entity/manufacturer_entity.dart';
import 'package:flutter_application_1/domain/entity/owner_entity.dart';
import 'package:flutter_application_1/domain/entity/role_entity.dart';

import '../../domain/entity/user_entity.dart';

class User extends UserEntity {
  late int id;
  final String login;
  final String password;
  final int role_id;
  User({required this.login, required this.password, required this.role_id})
      : super(
          login: login,
          password: password,
          role_id: role_id,
        );

  Map<String, dynamic> toMap() {
    return {
      'login': login,
      'password': password,
      'role_id': role_id,
    };
  }

  factory User.toFromMap(Map<String, dynamic> json) {
    return User(
      login: json['login'],
      password: json['password'],
      role_id: json['role_id'],
    );
  }
}
