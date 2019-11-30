import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(120.0, 50.0, 120.0, 0),
          child: CircleAvatar(
              maxRadius: 60.0,
              minRadius: 60.0,
              backgroundImage: AssetImage('assets/images/pic2.jpeg')),
        ),
        Container(
          padding: EdgeInsets.only(top: 15.0),
          child: FlatButton(
              onPressed: () => {},
              child: Text("Miguel Ferreira",
                  style: TextStyle(fontWeight: FontWeight.w800))),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.fromLTRB(10.0, 20.0, 0, 0),
            child: FlatButton.icon(
              icon: new Icon(
                Icons.school,
                color: Color(0xff17B6E8),
              ),
              label: new Text("Colégio de Gaia"),
              onPressed: () => {},
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.fromLTRB(10.0, 20.0, 0, 0),
            child: FlatButton.icon(
              icon: new Icon(
                Icons.import_contacts,
                color: Color(0xff17B6E8),
              ),
              label: new Text("Informática e Tecnologias Multimédia"),
              onPressed: () => {},
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.fromLTRB(10.0, 20.0, 0, 0),
            child: FlatButton.icon(
              icon: new Icon(
                Icons.favorite,
                color: Color(0xff17B6E8),
              ),
              label: new Text("Programação, falar, empreendedorismo"),
              onPressed: () => {},
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 20.0, 0, 0),
          child: FlatButton(
            child: new Text(
              "Click me to see our privacy policy",
              style: TextStyle(color: Color(0xff17B6E8)),
            ),
            onPressed: () => {},
          ),
        ),
      ],
    );
  }
}
