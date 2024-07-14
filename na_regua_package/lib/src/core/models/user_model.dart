// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:na_regua_package/na_regua_package.dart';

class UserModel {
  String? id;
  String name;
  String email;
  String lastName;
  DateTime? birth;
  String phone;
  AddressModel? addressModel;
  UserModel({
    this.addressModel,
    this.id,
    this.name = '',
    this.email = '',
    this.lastName = '',
    this.birth,
    this.phone = '',
  });

  static String collectionName = "users";

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'lastName': lastName,
      'birth': birth,
      'phone': phone,
      'addressModel': addressModel?.toMap(),
    };
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      lastName: map['lastName'],
      birth: map['birth'] ? DateTime.parse(map['birth']) : map['birth'],
      phone: map['phone'],
      addressModel: AddressModel.fromMap(map['addressModel']),
    );
  }

  UserModel copyWith({
    String? id,
    String? name,
    String? email,
    String? lastName,
    DateTime? birth,
    String? phone,
    AddressModel? addressModel,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      lastName: lastName ?? this.lastName,
      birth: birth ?? this.birth,
      phone: phone ?? this.phone,
      addressModel: addressModel ?? this.addressModel,
    );
  }
}
