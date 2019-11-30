import 'package:flutter/material.dart';
import 'package:project_alex/screens/LoginScreen.dart';
import 'package:project_alex/screens/RegisterScreen.dart';
import 'package:project_alex/screens/HomeScreen.dart';
import 'package:project_alex/screens/SettingsScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the Home widget.
        '/': (context) => Home(),
        // When navigating to the "/login" route, build the Login widget.
        '/login': (context) => Login(),
        // When navigating to the "/register" route, build the Register widget.
        '/register': (context) => Register(),
        // When navigating to the "/settings" route, build the Settings widget.
        '/settings': (context) => Settings(),
      },
    );
  }
}
