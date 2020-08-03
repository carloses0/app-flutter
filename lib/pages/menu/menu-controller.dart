import 'package:app/service/imdb-service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart';
import 'package:mobx/mobx.dart';

part 'menu-controller.g.dart';

class MenuController = MenuControllerBase with _$MenuController;

abstract class MenuControllerBase with Store {

  final ImdbService _imdbService = Modular.get();

  @observable
  var globalState = GlobalKey<ScaffoldState>();

  @observable
  var search = TextEditingController();

  @observable
  int index = 0;

  @action
  Future<Response> listMovie() async {
    await _imdbService.searchBy('game').then((onValue) {
      print(onValue);
    }).catchError((onError) {
      print(onError);
    });
  }

}
