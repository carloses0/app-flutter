import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'sign-up-controller.g.dart';

class SignUpController = SignUpBase with _$SignUpController;

abstract class SignUpBase with Store{
  @observable
  var globalState = GlobalKey<ScaffoldState>();
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
}
