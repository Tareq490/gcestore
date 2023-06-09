import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterStoreSc extends StatefulWidget {
  @override
  State<RegisterStoreSc> createState() => _RegisterStoreScState();
}

class _RegisterStoreScState extends State<RegisterStoreSc> {
  bool _isObscure = true;

  String dropdownvalue = 'Clothes';

  var items = [
    'Accessories',
    'Groceries',
    'Clothes',
    'Glasses',
    'Books',
  ];



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
                  height: 40,
                  width: 20,
                ),

                TextFormField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      fillColor: Colors.transparent, labelText: 'Email'),
                ),

                SizedBox(
                  height: 40,
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
                  height: 50,
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton(
                      // Initial Value
                      value: dropdownvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ],
                ),


                SizedBox(
                  height: 40,
                  width: 20,
                ),

              
                TextFormField(
                  textAlign: TextAlign.center,
                
                  decoration: InputDecoration(
                      fillColor: Colors.transparent, labelText: 'Phone Number'),
                ),

                SizedBox(
                  height: 60,
                  width: 20,
                ),
      
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
                            primary: Colors.lightGreen,
                            
                            shape: const StadiumBorder()),
                        onPressed: () async {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) =>  RegisterUserSc(),
                          //     ));
                        }, child: Row( 
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children:[
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
                                ]
                                ),
                        ),
                
              ])),
            ))
          ],
        ));
  }
}