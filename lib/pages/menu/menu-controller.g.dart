// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu-controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MenuController on MenuControllerBase, Store {
  final _$globalStateAtom = Atom(name: 'MenuControllerBase.globalState');

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

  final _$indexAtom = Atom(name: 'MenuControllerBase.index');

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  @override
  String toString() {
    return '''
globalState: ${globalState},
index: ${index}
    ''';
  }
}
