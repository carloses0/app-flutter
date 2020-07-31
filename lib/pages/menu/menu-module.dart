import 'package:app/pages/menu/menu-controller.dart';
import 'package:app/pages/menu/menu-page.dart';
import 'package:app/service/imdb-service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MenuModule extends ChildModule{
  @override
  List<Bind> get binds => [
    Bind((i) => MenuController()),
    Bind((i) => ImdbService())
  ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, child: (_, args) => MenuPage(args.data), transition: TransitionType.fadeIn)
  ];

  static Inject get to => Inject<MenuModule>.of();
}
