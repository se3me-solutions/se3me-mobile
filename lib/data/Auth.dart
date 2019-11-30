import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<FirebaseUser> createUser(email, password, username) async {
  dynamic toReturn;

  await FirebaseAuth.instance
      .createUserWithEmailAndPassword(email: email, password: password)
      .then((user) => {
            toReturn = user.user,
            // ? Add user to our family
            Firestore.instance
                .collection('users')
                .document(user.user.uid)
                .setData({
              'username': username,
              'userID': user.user.uid,
              'verified': false,
              'personality': false
            }).catchError((e) => toReturn = null)
          })
      .catchError((e) => toReturn = null);

  return toReturn;
}

Future<FirebaseUser> signInUser(email, password) async {
  dynamic toReturn;

  FirebaseAuth.instance
      .signInWithEmailAndPassword(email: email, password: password)
      .then((user) => toReturn = user.user)
      .catchError((e) => toReturn = null);

  return toReturn;
}
