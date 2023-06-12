import 'package:flutter/material.dart';

import 'HomeSide.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var roleID = 1;
  

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        //key: _ScaffoldKey(),
        drawer: SideDrawer(),
        appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       ),
      ),
    );
    // return Scaffold(
    //     appBar: AppBar(
    //       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //     ),
    //     body: Stack(children: [
    //       SingleChildScrollView(
    //           child: Container(
    //               padding: EdgeInsets.all(10),
    //               child: Form(
    //                   //key: _formKey,
    //                   child: Column(children: [
    //                 Text(
    //                   'Sign up',
    //                   style: TextStyle(
    //                     fontWeight: FontWeight.bold,
    //                     fontSize: 25,
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   height: 50,
    //                   width: 20,
    //                 ),
    //               ]))))
    //     ]));
  }
}