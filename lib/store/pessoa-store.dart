import 'package:app/models/pessoa.dart';
import 'package:mobx/mobx.dart';
part 'pessoa-store.g.dart';

class pessoaStore = PessoaStore with _$pessoaStore;

abstract class PessoaStore with Store{
  @observable
  var _todo = ObservableList<Pessoa>();

  void add(Pessoa pessoa){
    _todo.add(pessoa);
  }

}
