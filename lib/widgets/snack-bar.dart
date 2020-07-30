import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class SnackBarUtil {
  static showSnackBar(context, String message) async {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(message, textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15)),
      duration: Duration(seconds: 3),
      elevation: 50,
      backgroundColor: Colors.deepPurpleAccent,
    ));
  }
}
