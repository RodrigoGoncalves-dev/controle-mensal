import 'package:flutter_modular/flutter_modular.dart';

class RouteModularModel {
  String moduleR;
  String childR;
  String route;
  List<String>? params;
  TransitionType? t;
  Duration? d;

  RouteModularModel({
    required this.route,
    required this.moduleR,
    required this.childR,
    this.params,
    this.t = TransitionType.scale,
    this.d = const Duration(milliseconds: 700),
  });
}
