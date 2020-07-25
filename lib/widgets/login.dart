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
        body: Container(
          color: Colors.black,
          height: 30,
          width: 10,
        ),
      ),
    );
  }
}
