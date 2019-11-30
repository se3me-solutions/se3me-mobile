import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0),
          child: TextField(
              decoration: InputDecoration(
                  hintText: 'Who are you looking for?',
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)))),
        ),
        Container(
          margin: EdgeInsets.only(left: 50.0, top: 30.0),
          child: Text(
            "Search ...",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w200),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  height: 50,
                  child: RaisedButton.icon(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0)),
                    icon: Icon(Icons.school),
                    label: Text("In school"),
                    onPressed: () => {},
                    color: Color(0xff17B6E8),
                    textColor: Colors.white,
                  )),
              Container(
                  height: 50,
                  child: RaisedButton.icon(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0)),
                    icon: Icon(Icons.favorite),
                    label: Text("By taste"),
                    onPressed: () => {},
                    color: Color(0xff17B6E8),
                    textColor: Colors.white,
                  )),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20.0, 70.0, 20.0, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image(image: AssetImage('assets/images/social.png')),
          ),
        ),
      ],
    );
  }
}
