import 'package:app/pages/menu/menu-controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SeriesWidget extends StatefulWidget {
  @override
  _SeriesWidgetState createState() => _SeriesWidgetState();
}

class _SeriesWidgetState extends ModularState<SeriesWidget, MenuController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(200),
      color: Colors.orange,
    );
  }
}



