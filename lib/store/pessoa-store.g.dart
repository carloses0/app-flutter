// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pessoa-store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$pessoaStore on PessoaStore, Store {
  final _$_todoAtom = Atom(name: 'PessoaStore._todo');

  @override
  ObservableList<Pessoa> get _todo {
    _$_todoAtom.reportRead();
    return super._todo;
  }

  @override
  set _todo(ObservableList<Pessoa> value) {
    _$_todoAtom.reportWrite(value, super._todo, () {
      super._todo = value;
    });
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
