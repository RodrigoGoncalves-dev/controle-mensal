import 'package:uuid/uuid.dart';

Uuid _uuid = const Uuid();

String get uuid => _uuid.v4();

Map<String, dynamic> mapI18n = {};

const String stringEmpty = " -- ";
