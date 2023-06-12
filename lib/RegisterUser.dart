import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class RegisterUserSc extends StatefulWidget {
  @override
  State<RegisterUserSc> createState() => _RegisterUserScState();
}

class _RegisterUserScState extends State<RegisterUserSc> {
bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
                child: Container(
              padding: EdgeInsets.all(50),
              child: Form(
                  //key: _formKey,
                  child: Column(children: [
                Text(
                  'Sign up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 20,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      fillColor: Colors.transparent, labelText: 'Username'),
                ),
                SizedBox(
                  height: 50,
                  width: 20,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      fillColor: Colors.transparent, labelText: 'Email'),
                ),
                SizedBox(
                  height: 50,
                  width: 20,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      fillColor: Colors.transparent, labelText: 'Phone Number'),
                ),
                SizedBox(
                  height: 50,
                  width: 20,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      labelText: 'Password',
                      suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          })),
                ),
                SizedBox(
                  height: 100,
                  width: 20,
                ),
                Row(
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyApp(),
                            ));
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Register",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            Icon(
                              Icons.how_to_reg,
                              color: Colors.white,
                            )
                          ]),
                    ),
                  ],
                ),
              ])),
            ))
          ],
        ));
  }
}