// ignore_for_file: unnecessary_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/Dropdownpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Press to Login';
  String inputName = '';
  String inputPassword = '';
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final String predefinedName = "Abdullah";
  final String predefinedPassword = "123";
  bool result =false;

  void _saveAndCompare() {
    String enteredName = _nameController.text;
    String enteredPassword = _passwordController.text;

    if (enteredName == predefinedName && enteredPassword == predefinedPassword) {
      //Navigator.push(context, MaterialPageRoute(builder: (context) => Dropdownpage()));
      // You can also display a message using a dialog or snackbar
      
      Navigator.pushNamed(context, '/dropdownpage');
    } else {
      

    }
    
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          title: Text(
            'GoMatch',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70),
          ),
         
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        //backgroundColor: Color.fromARGB(255, 25, 2, 91),
        body:Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('car.png'), // Path to your image
              fit: BoxFit.cover,
            ),
          ),
        child:  Center(

          child: Padding(

            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
               
                // Text input box
                
                TextField(
                  style: TextStyle(
                      color: const Color.fromARGB(179, 255, 255, 255)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 9, 30, 40),
                    labelText: 'Name',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(),
                    
                  ),
                  controller: _nameController,
                ),
                SizedBox(
                  height: 20,
                ),
                
                TextField(
                  style: TextStyle(
                      color: const Color.fromARGB(179, 255, 255, 255)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 9, 30, 40),
                    labelText: 'Password',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                controller: _passwordController,
                ),
                SizedBox(
                    height:
                        20), // Adds some space between the text input and the button
                ElevatedButton(
                  
                  onPressed: _saveAndCompare,

                  child: Text(buttonName),
                  
                ),
                //ElevatedButton(onPressed: () {}, child: Text("Forgot Password")),
                
              ],
            ),
          ),
        ),
      ),
      ),
    routes: {
        '/dropdownpage': (context) => Dropdownpage(), // Define the correct route name
      },
    );
  }
}

