// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:na_regua_package/na_regua_package.dart';

class ServiceFranchiseModel {
  final String idFranchise;
  final String id;
  final String nameService;
  final double price;
  final String description;
  final ServiceTypeEnum typeService;
  final bool isDeleted;
  ServiceFranchiseModel({
    required this.idFranchise,
    required this.id,
    required this.nameService,
    required this.price,
    required this.description,
    required this.typeService,
    required this.isDeleted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idFranchise': idFranchise,
      'id': id,
      'nameService': nameService,
      'price': price,
      'description': description,
      'is_deleted': isDeleted,
      'type_service': typeService.name,
    };
  }

  factory ServiceFranchiseModel.fromMap(Map<String, dynamic> map) {
    return ServiceFranchiseModel(
      idFranchise: map['idFranchise'] as String,
      id: map['id'] as String,
      nameService: map['nameService'] as String,
      price: map['price'] as double,
      description: map['description'] as String,
      isDeleted: map['is_deleted'] as bool,
      typeService: map['type_service'] as ServiceTypeEnum,
    );
  }

  String toJson() => json.encode(toMap());

  factory ServiceFranchiseModel.fromJson(String source) => ServiceFranchiseModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
