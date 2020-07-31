import 'package:app/pages/menu/menu-controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MovieWidget extends StatefulWidget {
  @override
  _MovieWidgetState createState() => _MovieWidgetState();
}

class _MovieWidgetState extends ModularState<MovieWidget, MenuController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(250),
      color: Colors.black12,
    );
  }
}
