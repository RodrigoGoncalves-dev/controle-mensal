// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'zz_models_export.dart';

class FranchiseModel {
  final String idOwner;
  final String id;
  final String nameFranchise;
  final String emailFranchise;
  final String emailFranchiseLoggedAt;
  final String password;
  final String phoneFranchise;
  final AddressModel address;
  final ServiceFranchiseModel serviceFranchiseModel;
  final DateTime createdAt;
  final DateTime updatedAt;

  FranchiseModel({
    required this.idOwner,
    required this.id,
    required this.nameFranchise,
    required this.emailFranchise,
    required this.emailFranchiseLoggedAt,
    required this.password,
    required this.phoneFranchise,
    required this.address,
    required this.serviceFranchiseModel,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idOwner': idOwner,
      'id': id,
      'nameFranchise': nameFranchise,
      'emailFranchise': emailFranchise,
      'emailFranchiseLoggedAt': emailFranchiseLoggedAt,
      'password': password,
      'phoneFranchise': phoneFranchise,
      'address': address.toMap(),
      'serviceFranchiseModel': serviceFranchiseModel.toMap(),
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt.millisecondsSinceEpoch,
    };
  }

  factory FranchiseModel.fromMap(Map<String, dynamic> map) {
    return FranchiseModel(
      idOwner: map['idOwner'] as String,
      id: map['id'] as String,
      nameFranchise: map['nameFranchise'] as String,
      emailFranchise: map['emailFranchise'] as String,
      emailFranchiseLoggedAt: map['emailFranchiseLoggedAt'] as String,
      password: map['password'] as String,
      phoneFranchise: map['phoneFranchise'] as String,
      address: AddressModel.fromMap(map['address'] as Map<String, dynamic>),
      serviceFranchiseModel: ServiceFranchiseModel.fromMap(
          map['serviceFranchiseModel'] as Map<String, dynamic>),
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(map['updatedAt'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory FranchiseModel.fromJson(String source) =>
      FranchiseModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
