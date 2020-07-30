import 'package:app/pages/menu/menu-controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MenuModule extends ChildModule{
  @override
  List<Bind> get binds => [
    Bind((i) => MenuController())
  ];

  @override
  List<Router> get routers => [];

  static Inject get to => Inject<MenuModule>.of();

}
