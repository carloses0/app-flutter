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
import 'package:form_field_validator/form_field_validator.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends ModularState<SignUp, SignUpController> {
  bool _openCalendar = true;
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.global,
      backgroundColor: ColorsUtil.background(),
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Container(
          margin: EdgeInsets.only(right: 50),
          child: Padding(
              padding: const EdgeInsets.all(80),
              child: Image(image: AssetImage(Constantes.HBO_IMG), fit: BoxFit.contain),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        leading: GestureDetector(
          child: Icon(Ionicons.ios_arrow_back),
          onTap: () => Navigator.pop(context)),
        centerTitle: true,
        elevation: 10,
      ),
      body: Form(
        key: controller.formStage,
        child: ListView(
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
            Screen.sizedBoxHeight(30),
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 50,
              child: Padding(padding: EdgeInsets.all(30), child: Image(image: AssetImage(Constantes.NEW_USER_IMG),)),
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
                width: Screen.width(context) / 1.25,
                child: Calendarro(
                  selectionMode: SelectionMode.SINGLE,
                  displayMode: DisplayMode.MONTHS,
                  startDate: DateTime(1950),
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
            ),
            Container(
              width: Screen.width(context) / 1.5,
              height: Screen.height(context) / 7,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: controller.email,
                validator: MultiValidator([
                  RequiredValidator(errorText: Constantes.REQUIRED),
                  EmailValidator(errorText: Constantes.EMAIL_INVALID)
                ]),
                maxLines: 1,
                decoration: InputDecoration(
                  icon: Icon(Zocial.email),
                  hintText: Constantes.EMAIL,
                  hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(10),
                  alignLabelWithHint: true,
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Container(
              width: Screen.width(context) / 1.5,
              height: Screen.height(context) / 7,
              child: TextFormField(
                controller: controller.password,
                keyboardType: TextInputType.number,
                validator: RequiredValidator(errorText: Constantes.REQUIRED),
                maxLines: 1,
                maxLength: 8,
                obscureText: _showPassword,
                decoration: InputDecoration(
                  icon: Icon(MaterialCommunityIcons.onepassword),
                  hintText: Constantes.PASSWORD,
                  errorStyle: TextStyle(color: Colors.orange),
                  hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                  suffixIcon: IconButton (
                    onPressed: () {
                      setState(() =>
                      _showPassword = !_showPassword);
                    },
                      icon: Icon(
                      Icons.remove_red_eye,
                      color: _showPassword ? Colors.blue : Colors.grey,
                ),),
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(10),
                  alignLabelWithHint: true,
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Container(
              width: Screen.width(context) / 1.25,
              height: Screen.height(context) / 13,
              child: RaisedButton(
                elevation: 10,
                splashColor: Colors.purple,
                textColor: Colors.black,
                child: Text(Constantes.SUBMIT, style: TextStyle(color: Colors.white),),
                color: Colors.black12,
                onPressed: () => controller.signUpButton(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget textFormField(String text, TextEditingController textEditingController, bool enabled) {
    return TextFormField(
      controller: textEditingController,
      maxLines: 1,
      enabled: enabled,
      validator: RequiredValidator(errorText: Constantes.REQUIRED),
      decoration: InputDecoration(
        hintText: text,
        errorStyle: TextStyle(color: Colors.orange),
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
