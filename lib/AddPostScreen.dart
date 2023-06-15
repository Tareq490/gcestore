import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:gcestore/homescreen.dart';
import 'package:image_picker/image_picker.dart';

import 'HomeSide.dart';
import 'ProfileScreen.dart';

class AddPostScreen extends StatefulWidget {
  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  var roleID = 1;
  int _selectedIndex = 0;
  XFile? imageFile;
  // File ? file= await compressfile(imageFile!.path);
  // XFile? compressedImage = XFile(file!.path);

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        showHome(context);
      case 1:
        AddPost(context);
      case 2:
        showProfile(context);
    }
    setState(() {
      _selectedIndex = index;
    });
  }

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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    maximumSize: Size(
                      MediaQuery.of(context).size.height * .30,
                      MediaQuery.of(context).size.width * .12,
                    ),
                    minimumSize: Size(
                      MediaQuery.of(context).size.height * .30,
                      MediaQuery.of(context).size.width * .12,
                    ),
                    primary: Colors.black,
                    shape: const StadiumBorder()),
                onPressed: () async {
                  _showCamera(context);
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Add Post",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Icon(
                        CupertinoIcons.padlock_solid,
                        color: Colors.white,
                      )
                    ]),
              ),
              Text(
                'Add Post Screen',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          //  bottomNavigationBar: convex,
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
                icon: Icon(Icons.face_6_rounded),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
          ),
        ));
  }

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

  void AddPost(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AddPostScreen(),
        ));
  }

  Future<void> _showCamera(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return SingleChildScrollView(
              child: ListBody(
            children: [
              Divider(
                  height: MediaQuery.of(context).size.height * 0.01,
                  color: Color.fromARGB(255, 179, 0, 255)),
              ListTile(
                onTap: () {
                  _openGallery(context);
                },
                leading: Icon(Icons.photo_sharp),
                title: Text(
                  'Gallery',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Divider(
                  height: MediaQuery.of(context).size.height * 0.01,
                  color: Color.fromARGB(255, 179, 0, 255)),
              ListTile(
                onTap: () {
                  _openCamera(context);
                },
                leading: Icon(Icons.camera_alt),
                title: Text(
                  'Open Camera',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ));
        });
  }

  void _openCamera(BuildContext context) async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      imageFile = pickedFile;
    });
    Navigator.pop(context);
  }

  void _openGallery(BuildContext context) async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      imageFile = pickedFile;
    });
    Navigator.pop(context);
  }
}
