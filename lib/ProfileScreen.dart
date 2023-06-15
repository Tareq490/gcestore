import 'package:flutter/material.dart';
import 'package:gcestore/AddPostScreen.dart';
import 'package:gcestore/profileheader.dart';

import 'HomeScreen.dart';
import 'HomeSide.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  var roleID = 1;
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
          body: DefaultTabController(
              length: 1,
              child: NestedScrollView(
                  headerSliverBuilder: (context, index) {
                    return [
                      profileheader(),
                    ];
                  },
                  body: SafeArea(
                    child: Column(
                      children: <Widget>[
                        Material(
                          color: Colors.white,
                          child: TabBar(
                            labelColor: Colors.black,
                            indicatorWeight:
                                MediaQuery.of(context).size.height * .002,
                            tabs: [
                              Tab(
                                icon: Icon(Icons.grid_on_sharp,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.camera),
                label: "",
                // label: Icon(Icons.camera),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.face_5_sharp),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Color.fromARGB(255, 69, 177, 189),
            onTap: _onItemTapped,
          )),
    );
  }
}