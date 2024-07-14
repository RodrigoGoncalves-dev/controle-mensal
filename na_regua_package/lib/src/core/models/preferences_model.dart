import 'dart:convert';
import 'package:na_regua_package/na_regua_package.dart';

class PreferencesModel {
  final String id;
  final String? establishmentId;
  bool? isDarkMode;
  String? languageCode;
  String? countryCode;

  PreferencesModel({
    required this.id,
    this.establishmentId,
    this.isDarkMode,
    this.languageCode,
    this.countryCode,
  });
  static const String box = "preferences";
  Map<String, dynamic> toMap({bool supabase = true}) {
    final map = {
      'id': id,
      'establishment_id': establishmentId,
      'is_dark_mode': isDarkMode,
      'language_code': languageCode,
      'country_code': countryCode,
    };

    return map;
  }

  factory PreferencesModel.fromMap(Map map) {
    return PreferencesModel(
      id: map['id'] ?? uuid,
      establishmentId: map['establishment_id'],
      isDarkMode: map['is_dark_mode'],
      languageCode: map['language_code'],
      countryCode: map['country_code'],
    );
  }

  String toJson() => json.encode(toMap());

  String get language {
    if (countryCode != null) return '${languageCode}_$countryCode';
    return languageCode ?? Intl.systemLocale;
  }

  factory PreferencesModel.fromJson(String source) => PreferencesModel.fromMap(json.decode(source));

  PreferencesModel copyWith({
    String? id,
    String? establishmentId,
    bool? isDarkMode,
    String? languageCode,
    String? countryCode,
  }) {
    return PreferencesModel(
      id: id ?? this.id,
      establishmentId: establishmentId ?? this.establishmentId,
      isDarkMode: isDarkMode ?? this.isDarkMode,
      languageCode: languageCode ?? this.languageCode,
      countryCode: countryCode,
    );
  }
}
