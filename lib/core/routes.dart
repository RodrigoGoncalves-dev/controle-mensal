import 'package:controle_mensal/domain/models/route_modular_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Routes {
  static const TransitionType t = TransitionType.rightToLeft;
  static const Duration d = Duration(milliseconds: 600);

  static final RouteModularModel splash = RouteModularModel(
    moduleR: '/',
    childR: '/',
    route: '/',
    d: d,
    t: t,
  );

  static final RouteModularModel login = RouteModularModel(
    moduleR: '/auth',
    childR: '/login',
    route: '/auth/login',
    d: d,
    t: t,
  );
  
  static final RouteModularModel home = RouteModularModel(
    moduleR: '/home',
    childR: '/',
    route: '/home/',
    d: d,
    t: t,
  );
}
