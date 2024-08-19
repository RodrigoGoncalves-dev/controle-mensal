import 'package:controle_mensal/core/pages/home/aplication/home_controller.dart';
import 'package:controle_mensal/core/pages/home/presenters/home_widget.dart';
import 'package:controle_mensal/core/routes.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {

   @override
   List<Bind> get binds => [
      Bind.lazySingleton((i) => HomeController()),
   ];

   @override
   List<ModularRoute> get routes => [
      ChildRoute(
        Routes.home.childR, 
        child: (context, args) => const HomeWidget(),
        transition: Routes.t,
        duration: Routes.d,
      )
   ];

}