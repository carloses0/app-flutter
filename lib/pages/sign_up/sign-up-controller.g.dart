// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign-up-controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignUpController on SignUpBase, Store {
  final _$globalStateAtom = Atom(name: 'SignUpBase.globalState');

  @override
  GlobalKey<ScaffoldState> get globalState {
    _$globalStateAtom.reportRead();
    return super.globalState;
  }

  @override
  set globalState(GlobalKey<ScaffoldState> value) {
    _$globalStateAtom.reportWrite(value, super.globalState, () {
      super.globalState = value;
    });
  }

  final _$nameAtom = Atom(name: 'SignUpBase.name');

  @override
  TextEditingController get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(TextEditingController value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$lastNameAtom = Atom(name: 'SignUpBase.lastName');

  @override
  TextEditingController get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(TextEditingController value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  final _$emailAtom = Atom(name: 'SignUpBase.email');

  @override
  TextEditingController get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(TextEditingController value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$ageAtom = Atom(name: 'SignUpBase.age');

  @override
  TextEditingController get age {
    _$ageAtom.reportRead();
    return super.age;
  }

  @override
  set age(TextEditingController value) {
    _$ageAtom.reportWrite(value, super.age, () {
      super.age = value;
    });
  }

  final _$addressAtom = Atom(name: 'SignUpBase.address');

  @override
  TextEditingController get address {
    _$addressAtom.reportRead();
    return super.address;
  }

  @override
  set address(TextEditingController value) {
    _$addressAtom.reportWrite(value, super.address, () {
      super.address = value;
    });
  }

  final _$passwordAtom = Atom(name: 'SignUpBase.password');

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

  @override
  String toString() {
    return '''
globalState: ${globalState},
name: ${name},
lastName: ${lastName},
email: ${email},
age: ${age},
address: ${address},
password: ${password}
    ''';
  }
}
