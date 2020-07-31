import 'package:app/models/person.dart';
import 'package:app/pages/menu/menu-controller.dart';
import 'package:app/util/constantes/imagens_util.dart';
import 'package:app/util/constantes/mensagem_util.dart';
import 'package:app/util/design/colors.dart';
import 'package:app/util/screen.dart';
import 'package:app/widgets/snack-bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MenuPage extends StatefulWidget {
  final Person pessoa;

  @override
  _MenuPageState createState() => _MenuPageState();

  MenuPage(this.pessoa);
}

class _MenuPageState extends ModularState<MenuPage, MenuController> {
  bool isActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          key: controller.globalState,
          width: Screen.width(context),
          height: Screen.height(context),
          padding: EdgeInsets.all(20),
          color: ColorsUtil.background(),
          child: Column(
            children: [
              Screen.sizedBoxHeight(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: Screen.width(context) / 3,
                    child: Image(image: AssetImage(ImagensUtil.HBO_MAX_IMG),),
                  ),
                  IconButton(
                    onPressed: () {},
                    splashColor: Colors.orange,
                    iconSize: 30,
                    icon: Icon(AntDesign.appstore_o, color: Colors.white,),
                  ),
                ],
              ),
              Row(
                children: [
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: bottomBar(),
    );
  }

  void updateStatusBar() {
    setState(() {});
  }

  Widget bottomBar() {
    return CurvedNavigationBar(
      onTap: updateState,
      items: <Widget>[
        controller.index != 0 ? widgetBar(MensagemUtil.SEARCH) : widgetIcon(FontAwesome.search),
        controller.index != 1 ? widgetBar(MensagemUtil.MOVIE) : widgetIcon(FontAwesome.film),
        controller.index != 2 ? widgetBar(MensagemUtil.SERIE) : widgetIcon(MaterialCommunityIcons.movie_open_outline),
      ],
      color: Colors.black12,
      backgroundColor: ColorsUtil.background(),
      animationCurve: Curves.easeInOutQuad,
      buttonBackgroundColor: Colors.white,
      animationDuration: Duration(milliseconds: 500),
    );
  }

  Padding widgetIcon(IconData data){
    return Padding(
      padding: EdgeInsets.all(10),
      child: Icon(data),
    );
  }

  Column widgetBar(String msg){
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(msg, style: TextStyle(color: Colors.white, fontSize: 20),),
        Icon(Entypo.dot_single, color: Colors.white,)
      ],
    );
  }

  void updateState(int index){
    setState(() {
      controller.index = index;
    });
  }

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) =>
        SnackBarUtil.showSnackBarSucess(controller.globalState.currentContext,
            MensagemUtil.WELCOME + ' ' + widget.pessoa.name));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
