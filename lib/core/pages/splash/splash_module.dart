import 'package:controle_mensal/core/pages/splash/presenters/splash_page.dart';
import 'package:controle_mensal/core/routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Routes.splash.childR,
          child: (context, args) => const SplashPage(),
          transition: Routes.t,
          duration: Routes.d,
        ),
      ];
}
