import 'package:controle_mensal/app_module.dart';
import 'package:controle_mensal/app_widget.dart';
import 'package:controle_mensal/firebase_options.dart';
import 'package:flutter/material.dart';

import 'package:na_regua_package/na_regua_package.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
