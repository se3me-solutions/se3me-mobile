import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_alex/data/Auth.dart';

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);

  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _showDialog(title, content) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(title: new Text(title), content: new Text(content));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Define the default font family.
        fontFamily: 'Rubik',
      ),
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  "Se3Me",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff17B6E8)),
                ),
                Padding(padding: const EdgeInsets.only(top: 70.0)),
                Container(
                  margin: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(const Radius.circular(20.0))),
                      labelText: 'Username ...',
                      suffixIcon: Icon(Icons.person),
                    ),
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    controller: _usernameController,
                  ),
                ),
                Padding(padding: const EdgeInsets.only(top: 30.0)),
                Container(
                  margin: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(const Radius.circular(20.0))),
                      labelText: 'E-mail ...',
                      suffixIcon: Icon(Icons.email),
                    ),
                    autocorrect: false,
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                  ),
                ),
                Padding(padding: const EdgeInsets.only(top: 30.0)),
                Container(
                  margin: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(const Radius.circular(20.0))),
                      labelText: 'Password ...',
                      suffixIcon: Icon(Icons.lock),
                    ),
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    controller: _passwordController,
                  ),
                ),
                Padding(padding: const EdgeInsets.only(top: 40.0)),
                Container(
                  height: 60.0,
                  width: 200.0,
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Color(0xff17B6E8))),
                    onPressed: () async {
                      FirebaseUser user = await createUser(
                          _emailController.text,
                          _passwordController.text,
                          _usernameController.text);

                      if (user != "Error" && user != "Username taken") {
                        _showDialog("Doneee", "Account created");
                      } else if (user == "Username taken") {
                        _showDialog("Ooof", "Username already taken");
                      } else {
                        _showDialog("Ooof",
                            "Couldn't create the user. Maybe it already exists!");
                      }
                    },
                    color: Color(0xff17B6E8),
                    textColor: Colors.white,
                    child: Text("R E G I S T E R".toUpperCase(),
                        style: TextStyle(fontSize: 20)),
                  ),
                ),
                Padding(padding: const EdgeInsets.only(top: 20.0)),
                Container(
                    child: FlatButton(
                  highlightColor: Colors.transparent,
                  child: Text(
                    "Already have an account? Click me!",
                    style: TextStyle(color: Colors.grey),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
