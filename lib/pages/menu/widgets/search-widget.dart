import 'package:app/pages/menu/menu-controller.dart';
import 'package:app/util/constantes/mensagem_util.dart';
import 'package:app/util/screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SearchWidget extends StatefulWidget {
  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends ModularState<SearchWidget, MenuController> implements SearchDelegate<String> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Screen.sizedBoxHeight(30),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: controller.search,
                maxLength: 30,
                decoration: InputDecoration(
                  labelText: MensagemUtil.SEARCH,
                  labelStyle: TextStyle(color: Colors.white),
                  fillColor: Colors.transparent,
                  suffixIcon: FlatButton(child: Icon(Icons.search, color: Colors.white,), onPressed: () {}),
                  focusedBorder: border(Colors.white, 4),
                  disabledBorder: border(Colors.orange, 4),
                  enabledBorder: border(Colors.white, 50),
                  errorBorder: border(Colors.red, 4),
                ),
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ],
    );
  }

  OutlineInputBorder border(Color color, double radius){
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        borderSide: BorderSide(width: 1, color: color)
    );
  }

  @override
  String query;

  @override
  ThemeData appBarTheme(BuildContext context) {
    // TODO: implement appBarTheme
    return null;
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return null;
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return null;
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return null;
  }

  @override
  void close(BuildContext context, String result) {
    // TODO: implement close
  }

  @override
  // TODO: implement keyboardType
  TextInputType get keyboardType => null;

  @override
  // TODO: implement searchFieldLabel
  String get searchFieldLabel => null;

  @override
  void showResults(BuildContext context) {
    // TODO: implement showResults
  }

  @override
  void showSuggestions(BuildContext context) {
    // TODO: implement showSuggestions
  }

  @override
  // TODO: implement textInputAction
  TextInputAction get textInputAction => null;

  @override
  // TODO: implement transitionAnimation
  Animation<double> get transitionAnimation => null;
}
