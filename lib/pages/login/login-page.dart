import 'package:app/pages/login/login-controller.dart';
import 'package:app/util/const.dart';
import 'package:app/util/design/colors.dart';
import 'package:app/util/routes.dart';
import 'package:app/util/screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends ModularState<Login, LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorsUtil.background(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: Screen.width(context) / 1.25,
                  child: Image(image: AssetImage(Constantes.HBO_IMG), fit: BoxFit.fill
                  )),
              SizedBox(height: 100),
              Container(
                width: Screen.width(context) / 1.25,
                child: TextFormField(
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontStyle: FontStyle.normal,
                      fontSize: 20,
                      fontFamily: "Poppins",
                      color: Colors.white),
                  controller: controller.username,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Feather.user, size: 20,),
                    fillColor: Colors.white,
                    labelText: Constantes.LOGIN,
                    labelStyle: TextStyle(color: Colors.white),
                    errorStyle: TextStyle(color: Colors.red),
                    counterStyle: TextStyle(backgroundColor: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: Screen.width(context) / 1.25,
                child: TextFormField(
                  maxLength: 10,
                  obscureText: controller.showPassword,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.visiblePassword,
                  style: TextStyle(fontStyle: FontStyle.normal,
                      fontSize: 20,
                      fontFamily: "Poppins",
                      color: Colors.white),
                  controller: controller.password,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.security, size: 20,),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() =>
                        controller.showPassword = !controller.showPassword);
                      },
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: controller.showPassword ? Colors.blue : Colors.grey,
                      ),),
                    fillColor: Colors.white,
                    labelText: Constantes.PASSWORD,
                    errorStyle: TextStyle(color: Colors.red),
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                key: controller.global,
                onTap: () => controller.login(),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  width: Screen.width(context) / 1.25,
                  height: 50,
                  child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(SimpleLineIcons.login, color: Colors.white,),
                          Text(Constantes.LOGIN, style: TextStyle(
                              color: Colors.white, fontSize: 20),),
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: Screen.height(context) / 10,
                child: Center(
                  child: InkWell(
                    highlightColor: Colors.lightBlue,
                    child: Icon(Ionicons.ios_finger_print, size: 70,),
                    onTap: () => controller.authFinger(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Help",
        elevation: 100,
        backgroundColor: Colors.black,
        onPressed: () => Modular.to.pushNamed(Routes.SIGN_UP),
        child: Icon(Ionicons.ios_help),
      ),
    );
  }
}
