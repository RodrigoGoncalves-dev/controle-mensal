import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ItemModel {
  final int id;
  final int categoryId;
  final String name;
  final String description;
  final double price;
  ItemModel({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.description,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'category_id': categoryId,
      'name': name,
      'description': description,
      'price': price,
    };
  }

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      id: (map['id'] ?? 0) as int,
      categoryId: (map['category_id'] ?? 0) as int,
      name: (map['name'] ?? '') as String,
      description: (map['description'] ?? '') as String,
      price: (map['price'] ?? 0.0) as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemModel.fromJson(String source) =>
      ItemModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
