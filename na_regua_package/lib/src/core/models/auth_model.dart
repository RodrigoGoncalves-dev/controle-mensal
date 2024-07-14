// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:na_regua_package/na_regua_package.dart';

class AuthModel {
  final String accessToken;
  final String tokenType;
  final int expiresIn;
  final int expiresAt;
  final String refreshToken;
  final UserModel user;
  AuthModel({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    required this.expiresAt,
    required this.refreshToken,
    required this.user,
  });

  static const String box = "auth";

  @override
  String toString() {
    return 'AuthModel(accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn, expiresAt: $expiresAt, refreshToken: $refreshToken, user: $user)';
  }

  AuthModel copyWith({
    String? accessToken,
    String? tokenType,
    int? expiresIn,
    int? expiresAt,
    String? refreshToken,
    UserModel? user,
  }) {
    return AuthModel(
      accessToken: accessToken ?? this.accessToken,
      tokenType: tokenType ?? this.tokenType,
      expiresIn: expiresIn ?? this.expiresIn,
      expiresAt: expiresAt ?? this.expiresAt,
      refreshToken: refreshToken ?? this.refreshToken,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
      'tokenType': tokenType,
      'expiresIn': expiresIn,
      'expiresAt': expiresAt,
      'refreshToken': refreshToken,
      'user': user.toMap(),
    };
  }

  factory AuthModel.fromMap(Map<String, dynamic> map) {
    return AuthModel(
      accessToken: map['accessToken'] as String,
      tokenType: map['tokenType'] as String,
      expiresIn: map['expiresIn'] as int,
      expiresAt: map['expiresAt'] as int,
      refreshToken: map['refreshToken'] as String,
      user: UserModel.fromMap(map['user'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthModel.fromJson(String source) => AuthModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
