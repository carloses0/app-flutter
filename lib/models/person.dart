class Person{
  String _name;
  String _lastName;
  String _age;
  String _adress;
  String _email;
  String _password;

  Person(this._name, this._lastName, this._email, this._password, this._adress, this._age);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['email'] = this._email;
    data['lastName'] = this._lastName;
    data['password'] = this._password;
    data['adress'] = this._adress;
    data['age'] = this._age;
    return data;
  }

  Person.fromJson(Map<String, dynamic> json) {
    this._name = json['name'];
    this._email = json['email'];
    this._password = json['password'];
    this._lastName = json['lastName'];
    this._adress = json['adress'];
    this._age = json['age'];
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get adress => _adress;

  set adress(String value) {
    _adress = value;
  }

  String get age => _age;

  set age(String value) {
    _age = value;
  }

  String get lastName => _lastName;

  set lastName(String value) {
    _lastName = value;
  }
}
