import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);

  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool publicProfile = false;
  bool allowStatus = false;
  bool allowText = false;
  bool allowGhosts = false;
  bool allowSeeSchool = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Define the default font family.
        fontFamily: 'Rubik',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: new Text(
            "SETTINGS",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w900, color: Color(0xff17B6E8)),
          ),
          leading: IconButton(
            icon: Icon(Icons.close),
            color: Color(0xff17B6E8),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(top: 40.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(left: 20.0)),
                Expanded(child: Text("Make my profile public")),
                Checkbox(
                  value: publicProfile,
                  activeColor: Color(0xff17B6E8),
                  checkColor: Colors.white,
                  onChanged: (bool value) {
                    setState(() {
                      publicProfile = value;
                      if (value) {
                        allowStatus = true;
                        allowText = true;
                        allowGhosts = true;
                        allowSeeSchool = true;
                      } else {
                        allowStatus = false;
                        allowText = false;
                        allowGhosts = false;
                        allowSeeSchool = false;
                      }
                    });
                  },
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(left: 20.0)),
                Expanded(child: Text("Allow strangers to see my status")),
                Checkbox(
                  value: allowStatus,
                  activeColor: Color(0xff17B6E8),
                  checkColor: Colors.white,
                  onChanged: (bool value) {
                    setState(() {
                      allowStatus = value;
                    });
                  },
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(left: 20.0)),
                Expanded(child: Text("Allow people to text me")),
                Checkbox(
                  value: allowText,
                  activeColor: Color(0xff17B6E8),
                  checkColor: Colors.white,
                  onChanged: (bool value) {
                    setState(() {
                      allowText = value;
                    });
                  },
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(left: 20.0)),
                Expanded(child: Text("Allow ghosts to text me")),
                Checkbox(
                  value: allowGhosts,
                  activeColor: Color(0xff17B6E8),
                  checkColor: Colors.white,
                  onChanged: (bool value) {
                    setState(() {
                      allowGhosts = value;
                    });
                  },
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(left: 20.0)),
                Expanded(
                    child: Text("Allow people to see my school and course")),
                Checkbox(
                  value: allowSeeSchool,
                  activeColor: Color(0xff17B6E8),
                  checkColor: Colors.white,
                  onChanged: (bool value) {
                    setState(() {
                      allowSeeSchool = value;
                    });
                  },
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.only(top: 40.0)),
            Container(
              height: 50.0,
              width: 200.0,
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0)),
                onPressed: () {},
                color: Color(0xff17B6E8),
                textColor: Colors.white,
                child: Text("Save changes", style: TextStyle(fontSize: 15.0)),
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 20.0)),
            Container(
              height: 50.0,
              width: 200.0,
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0)),
                onPressed: () {},
                color: Color(0xffFF2020),
                textColor: Colors.white,
                child: Text("Delete account", style: TextStyle(fontSize: 15.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
