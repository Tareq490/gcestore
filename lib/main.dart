import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gcestore/HomeScreen.dart';
import 'package:gcestore/RegisterUser.dart';

import 'RegisterStore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      theme: ThemeData(
     
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'GCE Store'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
      
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      
      body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.all(50),
                  child: Form(
                      //key: _formKey,
                      child: Column(
                    children: [
                      Text(
                        'LOGIN',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),

                    SizedBox(
                      height: 100, width: 20,
                    ),

                      TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            fillColor: Colors.transparent,
                            labelText: 'Email'),
                                                       
                      ),
                      TextFormField(
                        textAlign: TextAlign.center,
                        obscureText: true,
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
                                }
                                )
                                ),  
                      ),

                      SizedBox(
                      height: 50, width: 20,
                    ),
                    
                
                             ElevatedButton(
                             style: ElevatedButton.styleFrom(
                              maximumSize: Size(
                                MediaQuery.of(context).size.height * .20,
                                MediaQuery.of(context).size.width * .12,
                              ),
                              minimumSize: Size(
                                MediaQuery.of(context).size.height * .20,
                                MediaQuery.of(context).size.width * .12,
                              ),
                              primary: Colors.lightGreen,
                              shape: const StadiumBorder()),
                              onPressed:() async 
                              {Navigator.
                              push(context, MaterialPageRoute(builder: (context) => HomeScreen(),  
                              ));},



                               child: Row( 
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children:[
                                        Text(
                                        "Login",
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

                SizedBox(
                      height: 25, width: 20,
                    ),


                TextButton(
                    child: Text(
                      "Register as User",
                      style: TextStyle(fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterUserSc(),
                          ));
                    }),
                TextButton(
                    child: Text(
                      "Register as Store",
                      style: TextStyle(fontSize: 16),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterStoreSc(),
                                                ));
                    }),
              ])),
            ))
          ],
        ));
  }
}