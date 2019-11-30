import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_alex/components/Chat.dart';
import 'package:project_alex/components/Communities.dart';
import 'package:project_alex/components/Search.dart';
import 'package:project_alex/components/Profile.dart';

import 'package:flutter_icons/flutter_icons.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ! VARIABLES SECTION
  static int _selectedIndex = 0;
  String _selectedScreen = _screens[_selectedIndex];

  static const List _screens = ['Chat', 'Communities', 'Search', 'Profile'];
  static bool _ghost = false;
  // ! END OF VARIABLES SECTION

  // ! UI SECTION
  Widget settingsIcon() {
    return IconButton(
      icon: Icon(Icons.settings),
      color: Color(0xff17B6E8),
      onPressed: () {
        Navigator.pushNamed(context, '/settings');
      },
    );
  }

  Widget notificationsIcon() {
    return Stack(children: <Widget>[
      IconButton(
        icon: Icon(Entypo.getIconData('notification')),
        color: Color(0xff17B6E8),
        iconSize: 25.0,
        onPressed: () {},
      ),
      Positioned(
        right: 11,
        top: 11,
        child: new Container(
          padding: EdgeInsets.all(2),
          decoration: new BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(6),
          ),
          constraints: BoxConstraints(
            minWidth: 14,
            minHeight: 14,
          ),
          child: Text(
            '99+',
            style: TextStyle(
              color: Colors.white,
              fontSize: 8,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ]);
  }

  Widget ghostIcon() {
    return IconButton(
        icon: Icon(MaterialCommunityIcons.getIconData('ghost')),
        color: Color(0xff17B6E8),
        onPressed: () => _changeGhost());
  }

  Widget ghostIconOff() {
    return IconButton(
        icon: Icon(MaterialCommunityIcons.getIconData('ghost-off')),
        color: Color(0xff17B6E8),
        onPressed: () => _changeGhost());
  }
  // ! END UI SECTION

  // ! LOGIC SECTION
  void _changeTab(int index) {
    setState(() {
      _selectedIndex = index;
      _selectedScreen = _screens[_selectedIndex];
    });
  }

  void _changeGhost() {
    setState(() {
      _ghost = !_ghost;
    });
  }

  Widget _chooseScreen() {
    switch (_selectedIndex) {
      case 0:
        return Chat();
        break;
      case 1:
        return Communities();
        break;
      case 2:
        return Search();
        break;
      case 3:
        return Profile();
        break;
    }
  }

  void _onHorizontalDrag(DragEndDetails details) {
    if (details.primaryVelocity.compareTo(0) == -1) {
      // ? This one will make us go to the right
      if (_selectedIndex < 3) _selectedIndex++;
    } else {
      if (_selectedIndex > 0) _selectedIndex--;
    }

    // ? We'll call the function to update the tab
    _changeTab(_selectedIndex);
  }
  // ! END OF LOGIC SECTION

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // Define the default font family.
          fontFamily: 'Rubik'),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: new Text(
            _selectedScreen.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w900, color: Color(0xff17B6E8)),
          ),
          leading: _ghost == true ? ghostIconOff() : ghostIcon(),
          actions: <Widget>[
            _selectedIndex == 3 ? settingsIcon() : notificationsIcon()
          ],
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.white,
          child: GestureDetector(
            onHorizontalDragEnd: (details) => _onHorizontalDrag(details),
            child: _chooseScreen(),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble),
              title: Text('Chat'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('Communities'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xff17B6E8),
          unselectedItemColor: Colors.grey,
          onTap: _changeTab,
          elevation: 10.0,
        ),
      ),
    );
  }
}
