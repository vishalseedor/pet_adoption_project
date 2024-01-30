import 'package:flutter/material.dart';

class UserModel {
  final String firstname;
  final String lastname;
  final String dob;
  final String password;
  final String email;
  final String phone;
  final String address;
  final String gender;

  UserModel({
    required this.firstname,
    required this.lastname,
    required this.dob,
    required this.password,
    required this.email,
    required this.phone,
    required this.address,
    required this.gender,
  });
}
