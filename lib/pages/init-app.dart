import 'package:app/util/const.dart';
import 'package:app/util/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      title: Constantes.HBO_MAX,
      initialRoute: Modular.initialRoute,
      navigatorKey: Modular.navigatorKey,
      onGenerateRoute: Modular.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
