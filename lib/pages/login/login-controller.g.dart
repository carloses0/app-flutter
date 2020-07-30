// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login-controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on LoginControllerBase, Store {
  final _$_isLoginAtom = Atom(name: 'LoginControllerBase._isLogin');

  @override
  bool get _isLogin {
    _$_isLoginAtom.reportRead();
    return super._isLogin;
  }

  @override
  set _isLogin(bool value) {
    _$_isLoginAtom.reportWrite(value, super._isLogin, () {
      super._isLogin = value;
    });
  }

  final _$biometricsAtom = Atom(name: 'LoginControllerBase.biometrics');

  @override
  bool get biometrics {
    _$biometricsAtom.reportRead();
    return super.biometrics;
  }

  @override
  set biometrics(bool value) {
    _$biometricsAtom.reportWrite(value, super.biometrics, () {
      super.biometrics = value;
    });
  }

  final _$globalAtom = Atom(name: 'LoginControllerBase.global');

  @override
  GlobalKey<ScaffoldState> get global {
    _$globalAtom.reportRead();
    return super.global;
  }

  @override
  set global(GlobalKey<ScaffoldState> value) {
    _$globalAtom.reportWrite(value, super.global, () {
      super.global = value;
    });
  }

  final _$showPasswordAtom = Atom(name: 'LoginControllerBase.showPassword');

  @override
  bool get showPassword {
    _$showPasswordAtom.reportRead();
    return super.showPassword;
  }

  @override
  set showPassword(bool value) {
    _$showPasswordAtom.reportWrite(value, super.showPassword, () {
      super.showPassword = value;
    });
  }

  final _$usernameAtom = Atom(name: 'LoginControllerBase.username');

  @override
  TextEditingController get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(TextEditingController value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  final _$passwordAtom = Atom(name: 'LoginControllerBase.password');

  @override
  TextEditingController get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(TextEditingController value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$authFingerAsyncAction = AsyncAction('LoginControllerBase.authFinger');

  @override
  Future<void> authFinger() {
    return _$authFingerAsyncAction.run(() => super.authFinger());
  }

  final _$LoginControllerBaseActionController =
      ActionController(name: 'LoginControllerBase');

  @override
  bool checkLogin() {
    final _$actionInfo = _$LoginControllerBaseActionController.startAction(
        name: 'LoginControllerBase.checkLogin');
    try {
      return super.checkLogin();
    } finally {
      _$LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void login() {
    final _$actionInfo = _$LoginControllerBaseActionController.startAction(
        name: 'LoginControllerBase.login');
    try {
      return super.login();
    } finally {
      _$LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
biometrics: ${biometrics},
global: ${global},
showPassword: ${showPassword},
username: ${username},
password: ${password}
    ''';
  }
}
