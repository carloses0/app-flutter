import 'package:flutter/material.dart';

class Screen{

  static double width(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  static double height(BuildContext context){
    return MediaQuery.of(context).size.height;
  }

  static Widget sizedBoxHeight(double height){
    return SizedBox(height: height);
  }

  static Widget sizedBoxWidht(double widht){
    return SizedBox(width: widht);
  }
}
