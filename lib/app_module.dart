import 'package:controle_mensal/core/pages/auth/auth_module.dart';
import 'package:controle_mensal/core/pages/splash/splash_module.dart';
import 'package:controle_mensal/core/routes.dart';
import 'package:na_regua_package/na_regua_dependencies.dart';
import 'package:na_regua_package/na_regua_package.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Routes.splash.moduleR, module: SplashModule()),
        ModuleRoute(Routes.login.moduleR, module: AuthModule()),
      ];
}
