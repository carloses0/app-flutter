import 'package:app/pages/sign_up/sign-up-controller.dart';
import 'package:app/pages/sign_up/sign-up-page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SingUpModule extends ChildModule{
  @override
  List<Bind> get binds => [
    Bind((i) => SignUpController())
  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child: (_, __) => SignUp(), transition: TransitionType.fadeIn),
  ];

  static Inject get to => Inject<SingUpModule>.of();
}
