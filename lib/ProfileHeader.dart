import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'HomeScreen.dart';

class profileheader extends StatefulWidget {
  @override
  State<profileheader> createState() => _profileheaderState();
}

class _profileheaderState extends State<profileheader> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .0,
            bottom: MediaQuery.of(context).size.height * .0,
            left: MediaQuery.of(context).size.height * .0,
            right: MediaQuery.of(context).size.height * .01),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: MediaQuery.of(context).size.height * .05,
                  backgroundColor: Colors.white,
                  // backgroundImage: Image.memory(base64Decode(widget.toString())),
                  backgroundImage: Image.asset("assets/images/gce_logo.png").image,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "5",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "offers",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.height * .05,
                        ),
                        Text(
                          "2",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "following",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        LimitedBox(
                          maxWidth: MediaQuery.of(context).size.height * .93,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * .0,
                                bottom: MediaQuery.of(context).size.height * .0,
                                left: MediaQuery.of(context).size.height * .0,
                                right:
                                    MediaQuery.of(context).size.height * .01),
                            child: Text("Makkah Store"),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}