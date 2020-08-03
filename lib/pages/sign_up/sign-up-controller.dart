import 'dart:io';

import 'package:app/models/person.dart';
import 'package:app/service/auth/firebase-auth-service.dart';
import 'package:app/util/connection/response.dart';
import 'package:app/util/constantes/mensagem_util.dart';
import 'package:app/widgets/snack-bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'sign-up-controller.g.dart';

class SignUpController = SignUpBase with _$SignUpController;

abstract class SignUpBase with Store{

  final FireBaseAuthService _fireBaseAuthService = Modular.get();

  @observable
  var formStage = GlobalKey<FormState>();
  @observable
  var global = GlobalKey<ScaffoldState>();
  @observable
  var name = TextEditingController();
  @observable
  var lastName = TextEditingController();
  @observable
  var email = TextEditingController();
  @observable
  var age = TextEditingController();
  @observable
  var address = TextEditingController();
  @observable
  var password = TextEditingController();

  @action
  signUpButton() async {
      if(!formStage.currentState.validate()){
          return;
      }
      var person = Person(
          name: name.value.text.trim().toUpperCase(),
          lastName: lastName.value.text.toUpperCase().trim(),
          email: email.value.text.trim().toLowerCase(),
          adress: address.value.text.toUpperCase().trim(),
          age: age.value.text);
      Response future = await _fireBaseAuthService.createAuth(Person(password: password.value.text.trim(), email: email.value.text.trim()));
      if(future.statusCode == HttpStatus.ok){
            Response response = await _fireBaseAuthService.savePerson(person);
            if(response.statusCode == HttpStatus.ok){
              clearFields();
              SnackBarUtil.showSnackBarSucess(global.currentContext, MensagemUtil.REGISTRATION_OK);
              Navigator.pop(global.currentContext);
            }else{
              SnackBarUtil.showSnackBarError(global.currentContext, MensagemUtil.REGISTRATION_ERROR);
            }
      }else{
        SnackBarUtil.showSnackBarError(global.currentContext, future.content);
      }
  }

  void clearFields(){
    age.clear();
    address.clear();
    name.clear();
    lastName.clear();
    email.clear();
    password.clear();
  }
}
