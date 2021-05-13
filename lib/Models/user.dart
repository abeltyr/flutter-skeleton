import 'package:flutter/material.dart';

class UserModel {
  String id;
  String fullName;
  String phoneNumber;
  String email;
  DateTime birthDate;

  UserModel({
    @required this.id,
    @required this.fullName,
    @required this.phoneNumber,
    @required this.email,
    this.birthDate,
  });
}
