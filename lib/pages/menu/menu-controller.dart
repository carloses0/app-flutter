
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'menu-controller.g.dart';

class MenuController = MenuControllerBase with _$MenuController;

abstract class MenuControllerBase with Store {

  @observable
  var globalState = GlobalKey<ScaffoldState>();

}
