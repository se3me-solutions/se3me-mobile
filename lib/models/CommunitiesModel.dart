import 'package:cloud_firestore/cloud_firestore.dart';

class Communities {
  String _name;
  String _description;
  String _photoURL;
  int _members;

  Communities.fromDocument(DocumentSnapshot snapshot) {
    _name = snapshot.data['name'];
    _description = snapshot.data['description'];
    _photoURL = snapshot.data['photoURL'];
    _members = snapshot.data['membersCount'];
  }

  String get name => _name;
  String get description => _description;
  String get photoURL => _photoURL;
  int get membersCount => _members;
}
