import 'package:app/models/person.dart';
import 'package:app/pages/menu/menu-controller.dart';
import 'package:app/util/constantes/mensagem_util.dart';
import 'package:app/util/design/colors.dart';
import 'package:app/util/screen.dart';
import 'package:app/widgets/snack-bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MenuPage extends StatefulWidget {
  final Person pessoa;
  @override
  _MenuPageState createState() => _MenuPageState();

  MenuPage(this.pessoa);
}

class _MenuPageState extends ModularState<MenuPage, MenuController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        key: controller.globalState,
        width: Screen.width(context),
        height: Screen.height(context),
        padding: EdgeInsets.all(20),
        color: ColorsUtil.background(),
        child: Center(

        ),
      ),
    );
  }

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) =>
        SnackBarUtil.showSnackBarSucess(controller.globalState.currentContext, MensagemUtil.WELCOME +''+ widget.pessoa.name));
  }

  @override
  void dispose() {
    super.dispose();
  }


}
