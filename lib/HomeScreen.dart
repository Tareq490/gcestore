import 'package:flutter/material.dart';
import 'package:gcestore/AddPostScreen.dart';
import 'package:gcestore/profilescreen.dart';
import 'HomeSide.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  var roleId = 1;
  int _selectedIndex = 0;

  void showHome(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
  }

  void showProfile(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfileScreen(),
        ));
  }

  void addpost(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AddPostScreen(),
        ));
  }

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        showHome(context);
      case 1:
        addpost(context);
      case 2:
        showProfile(context);
    }
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          drawer: SideDrawer(),
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: Column(
            children: [
              Text(
                'Stories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 100,
                width: 15,
              ),
              Text(
                'Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
//bottomNavigationBar: convex,

          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.camera),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.face),
                label: 'profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
          )),
    );
  }
}
