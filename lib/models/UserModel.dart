import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String _email;
  String _name;
  String _school;
  // ? We call it course, but can be the class (like: 4C)
  String _course;
  List<String> _likes;

  User.fromDocument(DocumentSnapshot snapshot) {
    _email = snapshot.data['email'];
    _name = snapshot.data['name'];
    _school = snapshot.data['school'];
    _course = snapshot.data['course'];
    _likes = snapshot.data['likes'];
  }

  // * AAAAAA those boring gets 🙄
  String get email => _email;
  String get name => _name;
  String get school => _school;
  String get couse => _course;
  List<String> get likes => _likes;
}
