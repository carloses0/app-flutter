import 'package:app/pages/login/login-page.dart';
import 'package:app/service_impl/auth-finger-impl.dart';
import 'package:app/service_impl/firebase-auth-impl.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'login-controller.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => LoginController()),
    Bind((i) => FirebaseUtilImpl()),
    Bind((i) => AuthFingerImpl()),
  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child:(_, __) => Login()),
  ];

  static Inject get to => Inject<LoginModule>.of();

}
