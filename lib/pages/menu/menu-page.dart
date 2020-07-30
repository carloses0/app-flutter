import 'package:app/pages/menu/menu-controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends ModularState<MenuPage, MenuController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: controller.globalState,
    );
  }
}
