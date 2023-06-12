import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(children: <Widget>
        [
          DrawerHeader(
            child: Center(
              child: Padding(
              padding: EdgeInsets.all(  
              MediaQuery.of(context).size.width * .08
)),)
            ),
        ]
        ),

    );
  }
}