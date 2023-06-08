import 'package:flutter/material.dart';

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
     
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
                                })),  
                      )
                    ],
                  ))),
            )
          ],
        ));
  }
}