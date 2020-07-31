import 'dart:io';

import 'package:app/models/person.dart';
import 'package:app/util/connection/response.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseUtil{
  static var response;
  static final _db = FirebaseDatabase.instance.reference().child("USER");
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<Response> savePerson(Person person) async {
    return await _db.push().set(person.toJson())
        .then((onValue) =>
        Response(statusCode: HttpStatus.ok))
        .catchError((onError) =>
        Response(content:onError.toString(), statusCode: HttpStatus.internalServerError));
  }

  static Future<Response> loginByGoogle(Person person) async {
    return await _auth.signInWithEmailAndPassword(email: person.email, password: person.password)
        .then((onValue) =>
        Response(statusCode: HttpStatus.ok, content: onValue.user.email))
        .catchError((onError) =>
        Response(statusCode: HttpStatus.internalServerError, content: onError.message));
  }

  static Future<Response> createAuth(Person person) async {
    return await _auth.createUserWithEmailAndPassword(email: person.email, password: person.password)
        .then((onValue) =>
        Response(statusCode: HttpStatus.ok, content: onValue.user))
        .catchError((onError) =>
        Response(statusCode: HttpStatus.internalServerError, content: onError.message));
  }

  static Future<Response> getUserByEmail(String email) async {
    return await _db.once()
        .then((onValue) {
          Map people = onValue.value.entries.singleWhere((value) => value.value[EMAIL] == email).value;
          return Response(statusCode: HttpStatus.ok, content:
          Person(name: people[NAME], age: people[AGE], adress: people[ADRESS], email: people[EMAIL], lastName: people[LASTNAME]));
        })
        .catchError((onError) =>
        Response(statusCode: HttpStatus.internalServerError, content: onError.message));
  }
}
