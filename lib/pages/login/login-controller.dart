import 'dart:io';

import 'package:app/models/person.dart';
import 'package:app/service/auth/auth-fing-service.dart';
import 'package:app/service/auth/firebase-auth-service.dart';
import 'package:app/util/connection/response.dart';
import 'package:app/util/constantes/mensagem_util.dart';
import 'package:app/util/constantes/routes.dart';
import 'package:app/widgets/snack-bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'login-controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store{

  final FireBaseAuthService _fireBaseAuthService = Modular.get();
  final AuthFingerService _authFingerService = Modular.get();

  @observable
  bool _isLogin;

  @observable
  bool biometrics;

  @observable
  var form = GlobalKey<FormState>();

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
  login() async {
    if(!form.currentState.validate()){
      SnackBarUtil.showSnackBarError(global.currentContext, MensagemUtil.USER_PASSWORD_WRONG);
      return;
    }
    var person = Person(email: username.value.text.toLowerCase(), password: password.value.text);
    Response response = await _fireBaseAuthService.loginByGoogle(person);
    if(response.statusCode == HttpStatus.ok){
      clearFields();
      Response user = await _fireBaseAuthService.getUserByEmail(response.content);
      Navigator.pushNamed(global.currentContext, RoutesUtil.MENU, arguments: user.content);
    }else{
      SnackBarUtil.showSnackBarError(global.currentContext, response.content);
    }
  }

  @action
  Future<void> authFinger() async {
    this.biometrics = await _authFingerService.getAvailableBiometrics();
    this.biometrics ? await _authFingerService.authenticate() : _authFingerService.cancelAuthentication();
  }

  void clearFields(){
    username.clear();
    password.clear();
  }
}
