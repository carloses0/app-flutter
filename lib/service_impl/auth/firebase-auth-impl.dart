import 'dart:io';

import 'package:app/models/person.dart';
import 'package:app/service/auth/firebase-auth-service.dart';
import 'package:app/util/connection/response.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseUtilImpl implements FireBaseAuthService{
  static final _db = FirebaseDatabase.instance.reference().child("USER");
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<Response> savePerson(Person person) async {
    return await _db.push().set(person.toJson())
        .then((onValue) =>
        Response(statusCode: HttpStatus.ok))
        .catchError((onError) =>
        Response(content:onError.toString(), statusCode: HttpStatus.internalServerError));
  }

  @override
  Future<Response> loginByGoogle(Person person) async {
    return await _auth.signInWithEmailAndPassword(email: person.email, password: person.password)
        .then((onValue) =>
        Response(statusCode: HttpStatus.ok, content: onValue.user.email))
        .catchError((onError) =>
        Response(statusCode: HttpStatus.internalServerError, content: onError.message));
  }

  @override
  Future<Response> createAuth(Person person) async {
    return await _auth.createUserWithEmailAndPassword(email: person.email, password: person.password)
        .then((onValue) =>
        Response(statusCode: HttpStatus.ok, content: onValue.user))
        .catchError((onError) =>
        Response(statusCode: HttpStatus.internalServerError, content: onError.message));
  }

  @override
  Future<Response> getUserByEmail(String email) async {
    return await _db.once()
        .then((onValue) {
          Map people = onValue.value.entries.singleWhere((value) => value.value[EMAIL] == email).value;
          return Response(statusCode: HttpStatus.ok, content: Person.fromJson(people));
        })
        .catchError((onError) =>
        Response(statusCode: HttpStatus.internalServerError, content: onError.message));
  }
}
