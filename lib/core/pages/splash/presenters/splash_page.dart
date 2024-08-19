import 'package:controle_mensal/core/routes.dart';
import 'package:flutter/material.dart';
import 'package:na_regua_package/na_regua_package.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
      3.seconds,
      () => Modular.to.navigate(Routes.home.route),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
