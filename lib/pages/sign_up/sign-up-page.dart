import 'package:app/pages/sign_up/sign-up-controller.dart';
import 'package:app/util/const.dart';
import 'package:app/util/date-util.dart';
import 'package:app/util/design/colors.dart';
import 'package:app/util/screen.dart';
import 'package:calendarro/calendarro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends ModularState<SignUp, SignUpController> {
  bool _openCalendar = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtil.background(),
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text(
          Constantes.HBO_MAX,
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        leading: GestureDetector(
          child: Icon(Ionicons.ios_arrow_back),
          onTap: () => Navigator.pop(context)),
        centerTitle: true,
        elevation: 10,
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: [
          Center(
            child: Container(
              child: Text(
                Constantes.WELCOME,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Screen.sizedBoxHeight(50),
          Container(
            padding: EdgeInsets.all(50),
            height: Screen.height(context) / 3,
            width: Screen.width(context) / 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              border: Border.all(color: Colors.white, width: 3),
              color: Colors.black,
            ),
            child: Image(image: AssetImage(Constantes.NEW_USER_IMG)),
          ),
          Screen.sizedBoxHeight(30),
          Container(
            width: Screen.width(context) / 1.5,
            height: Screen.height(context) / 10,
            child: textFormField(Constantes.NAME, controller.name, true),
          ),
          Container(
            width: Screen.width(context) / 1.5,
            height: Screen.height(context) / 10,
            child: textFormField(Constantes.LAST_NAME, controller.lastName, true),
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: _openCalendar ? Container(
              width: Screen.width(context) / 1.5,
              child: Calendarro(
                displayMode: DisplayMode.MONTHS,
                startDate: DateTime(1930),
                endDate: DateTime.now(),
                onTap: (data) => controller.age.text = DateUtil.formaterDate(Constantes.DATE_PT_BR, data),
              ),
            ) : Screen.sizedBoxHeight(5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: Screen.width(context) / 2,
                height: Screen.height(context) / 10,
                child: textFormField(Constantes.AGE, controller.age, false),
              ),
              IconButton(
                  padding: EdgeInsets.only(bottom: 20),
                  tooltip: Constantes.OPEN_CALENDAR,
                  color: Colors.white,
                  onPressed: () {setState(() {_openCalendar = !_openCalendar;});},
                  icon: Icon(AntDesign.calendar),
              ),
            ],
          ),
          Container(
            width: Screen.width(context) / 1.5,
            height: Screen.height(context) / 7,
            child: textFormField(Constantes.ADDRESS, controller.address, true),
          )
        ],
      ),
    );
  }

  Widget textFormField(String text, TextEditingController textEditingController, bool enabled) {
    return TextFormField(
      controller: textEditingController,
      maxLines: 1,
      enabled: enabled,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(color: Colors.white, fontSize: 15),
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.all(10),
        alignLabelWithHint: true,
      ),
      textCapitalization: TextCapitalization.characters,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.white, fontSize: 20),
    );
  }
}
