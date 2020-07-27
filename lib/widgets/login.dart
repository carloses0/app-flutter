import 'package:flutter/material.dart';

class InitApp extends StatefulWidget {
  @override
  _InitAppState createState() => _InitAppState();
}

class _InitAppState extends State<InitApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.purple,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          actionsIconTheme: IconThemeData(opacity: 20),
        ),
        body: Container(
          height: 30,
          width: 10,
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: "ADD",
          elevation: 20,
          backgroundColor: Colors.purple,
          onPressed: (){},
          hoverElevation: 20,
        ),
      ),
    );
  }
}
