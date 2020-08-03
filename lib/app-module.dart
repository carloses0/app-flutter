import 'package:app/app-controller.dart';
import 'package:app/pages/init-app.dart';
import 'package:app/pages/login/login-module.dart';
import 'package:app/pages/menu/menu-module.dart';
import 'package:app/pages/sign_up/sign-up-module.dart';
import 'package:app/util/constantes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind((i) => AppController())
  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, module: LoginModule()),
    Router(RoutesUtil.MENU, module: MenuModule()),
    Router(RoutesUtil.SIGN_UP, module: SingUpModule()),
  ];

  @override
  Widget get bootstrap => InitApp();
}
