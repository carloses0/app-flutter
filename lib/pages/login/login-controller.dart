import 'package:app/auth/auth-finger.dart';
import 'package:app/util/const.dart';
import 'package:app/util/object-util.dart';
import 'package:app/widgets/snack-bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'login-controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store{
  @observable
  bool _isLogin;

  @observable
  bool biometrics;

  @observable
  var global = GlobalKey<ScaffoldState>();

  @observable
  bool showPassword = true;

  @observable
  var username = new TextEditingController();

  @observable
  var password = new TextEditingController();

  @action
  bool checkLogin(){
    return _isLogin;
  }

  @action
  void login(){
    if(checkValues())
        SnackBarUtil.showSnackBar(global.currentContext, Constantes.USER_PASSWORD_WRONG);
        return;
  }

  @action
  Future<void> authFinger() async {
    this.biometrics = await AuthFinger().getAvailableBiometrics();
    this.biometrics ? await AuthFinger().authenticate() : AuthFinger().cancelAuthentication();
  }

  bool checkValues(){
    return ObjectUtil.isNullOrBlank(username.value.text) || ObjectUtil.isNullOrBlank(password.value.text);
  }

  void dispose() {
    username = null;
    password = null;
  }

}
