import 'package:cloud_firestore/cloud_firestore.dart';

class Chat {
  String _senderName;
  String _senderImageURL;
  String _message;
  Timestamp _sentTime;

  Chat.fromDocument(DocumentSnapshot snapshot) {
    _senderName = snapshot.data['senderName'];
    _senderImageURL = snapshot.data['senderImageURL'];
    _message = snapshot.data['message'];
    _sentTime = snapshot.data['sentTime'];
  }

  String get senderName => _senderName;
  String get senderImage => _senderImageURL;
  String get message => _message;
  Timestamp get sentTime => _sentTime;
}
