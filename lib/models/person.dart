const String NAME = 'name';
const String EMAIL = 'email';
const String PASSWORD = 'password';
const String ADRESS = 'adress';
const String AGE = 'age';
const String LASTNAME = 'lastName';

class Person {
  String name;
  String lastName;
  String age;
  String adress;
  String email;
  String password;

  Person({this.name, this.lastName, this.age, this.adress, this.email, this.password});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data[NAME] = this.name;
    data[EMAIL] = this.email;
    data[LASTNAME] = this.lastName;
    data[PASSWORD] = this.password;
    data[ADRESS] = this.adress;
    data[AGE] = this.age;
    return data;
  }

  Person.fromJson(Map<dynamic, dynamic> json) {
    this.name = json[NAME];
    this.email = json[EMAIL];
    this.password = json[PASSWORD];
    this.lastName = json[LASTNAME];
    this.adress = json[ADRESS];
    this.age = json[AGE];
  }
}
