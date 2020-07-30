import 'package:app/pages/login/login-page.dart';
import 'package:app/pages/sign_up/sign-up-module.dart';
import 'package:app/pages/sign_up/sign-up-page.dart';
import 'package:app/util/routes.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login-controller.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => LoginController()),
  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child:(_, __) => Login()),
    Router(Routes.SIGN_UP, module: SingUpModule(), transition: TransitionType.fadeIn),
  ];

  static Inject get to => Inject<LoginModule>.of();

}
