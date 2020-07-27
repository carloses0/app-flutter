class Pessoa{
  String _nome;
  String _email;
  String _senha;

  Pessoa(this._nome, this._email, this._senha);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this._nome;
    data['email'] = this._email;
    data['senha'] = this._senha;
    return data;
  }

  Pessoa.fromJson(Map<String, dynamic> json) {
    this._nome = json['nome'];
    this._email = json['email'];
    this._senha = json['senha'];
  }

  String get senha => _senha;

  set senha(String value) {
    _senha = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }
}
