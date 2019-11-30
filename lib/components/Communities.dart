import 'package:flutter/material.dart';

class Communities extends StatefulWidget {
  Communities({Key key}) : super(key: key);

  _CommunitiesState createState() => _CommunitiesState();
}

class _CommunitiesState extends State<Communities> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      // ? Status container
      // ? We created one container to separate the status part from
      // ? the main screen (which is the main listview)
      Container(
        height: 100,
        // ? Status listview
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, 0, 0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                        maxRadius: 30.0,
                        minRadius: 30.0,
                        backgroundImage: AssetImage('assets/images/pic2.jpeg')),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, 0, 0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                        maxRadius: 30.0,
                        minRadius: 30.0,
                        backgroundImage: AssetImage('assets/images/pic2.jpeg')),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, 0, 0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                        maxRadius: 30.0,
                        minRadius: 30.0,
                        backgroundImage: AssetImage('assets/images/pic2.jpeg')),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, 0, 0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                        maxRadius: 30.0,
                        minRadius: 30.0,
                        backgroundImage: AssetImage('assets/images/pic2.jpeg')),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, 0, 0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                        maxRadius: 30.0,
                        minRadius: 30.0,
                        backgroundImage: AssetImage('assets/images/pic2.jpeg')),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, 0, 0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                        maxRadius: 30.0,
                        minRadius: 30.0,
                        backgroundImage: AssetImage('assets/images/pic2.jpeg')),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.0, 20.0, 0, 0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                        maxRadius: 30.0,
                        minRadius: 30.0,
                        backgroundImage: AssetImage('assets/images/pic2.jpeg')),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      Container(
          margin: EdgeInsets.only(left: 30, top: 20),
          child: Text(
            "Groups",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
          )),
      Container(
        margin: EdgeInsets.only(top: 6),
        height: 350,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(children: <Widget>[
                  Image(image: AssetImage('assets/images/card.jpg')),
                  Container(
                    margin: EdgeInsets.only(top: 250, left: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff17B6E8)),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () => {},
                    ),
                  )
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(children: <Widget>[
                  Image(image: AssetImage('assets/images/card.jpg')),
                  Container(
                    margin: EdgeInsets.only(top: 250, left: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff17B6E8)),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () => {},
                    ),
                  )
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(children: <Widget>[
                  Image(image: AssetImage('assets/images/card.jpg')),
                  Container(
                    margin: EdgeInsets.only(top: 250, left: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff17B6E8)),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () => {},
                    ),
                  )
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(children: <Widget>[
                  Image(image: AssetImage('assets/images/card.jpg')),
                  Container(
                    margin: EdgeInsets.only(top: 250, left: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff17B6E8)),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () => {},
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
      Container(
          margin: EdgeInsets.only(left: 30, top: 20),
          child: Text(
            "Photos",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
          )),
      Container(
        margin: EdgeInsets.only(top: 6),
        height: 350,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(children: <Widget>[
                  Image(image: AssetImage('assets/images/card.jpg')),
                  Container(
                    margin: EdgeInsets.only(top: 250, left: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff17B6E8)),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () => {},
                    ),
                  )
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(children: <Widget>[
                  Image(image: AssetImage('assets/images/card.jpg')),
                  Container(
                    margin: EdgeInsets.only(top: 250, left: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff17B6E8)),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () => {},
                    ),
                  )
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(children: <Widget>[
                  Image(image: AssetImage('assets/images/card.jpg')),
                  Container(
                    margin: EdgeInsets.only(top: 250, left: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff17B6E8)),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () => {},
                    ),
                  )
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(children: <Widget>[
                  Image(image: AssetImage('assets/images/card.jpg')),
                  Container(
                    margin: EdgeInsets.only(top: 250, left: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff17B6E8)),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () => {},
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
      Container(
          margin: EdgeInsets.only(left: 30, top: 20),
          child: Text(
            "Videos",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
          )),
      Container(
        margin: EdgeInsets.only(top: 6),
        height: 350,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(children: <Widget>[
                  Image(image: AssetImage('assets/images/card.jpg')),
                  Container(
                    margin: EdgeInsets.only(top: 250, left: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff17B6E8)),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () => {},
                    ),
                  )
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(children: <Widget>[
                  Image(image: AssetImage('assets/images/card.jpg')),
                  Container(
                    margin: EdgeInsets.only(top: 250, left: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff17B6E8)),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () => {},
                    ),
                  )
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(children: <Widget>[
                  Image(image: AssetImage('assets/images/card.jpg')),
                  Container(
                    margin: EdgeInsets.only(top: 250, left: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff17B6E8)),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () => {},
                    ),
                  )
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(children: <Widget>[
                  Image(image: AssetImage('assets/images/card.jpg')),
                  Container(
                    margin: EdgeInsets.only(top: 250, left: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff17B6E8)),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      color: Colors.white,
                      onPressed: () => {},
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
