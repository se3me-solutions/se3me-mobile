import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  Chat({Key key}) : super(key: key);

  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[Text("This is the chat section")],
    );
  }
}
