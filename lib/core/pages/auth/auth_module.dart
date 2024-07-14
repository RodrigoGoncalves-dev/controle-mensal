import 'package:controle_mensal/core/pages/auth/presenters/auth_widget.dart';
import 'package:controle_mensal/core/routes.dart';
import 'package:na_regua_package/na_regua_package.dart';

class AuthModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Routes.login.childR,
          child: (context, args) => const AuthWidget(),
          duration: Routes.d,
          transition: Routes.t,
        )
      ];
}
