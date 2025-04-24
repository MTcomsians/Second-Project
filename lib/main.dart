// ignore_for_file: unnecessary_import, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/Dropdownpage.dart';
import 'package:provider/provider.dart';
//import 'car1.dart';

void main() {
  runApp( ChangeNotifierProvider(
      create: (context) => CarModel(),
      child: MyApp(),
    ),);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Login';
  String inputName = '';
  String inputPassword = '';
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final String predefinedName = "user";
  final String predefinedPassword = "user";
  bool result = false;
  
  void _saveAndCompare(BuildContext context) {
    String enteredName = _nameController.text;
    String enteredPassword = _passwordController.text;

    if (enteredName == predefinedName &&
        enteredPassword == predefinedPassword) {
      //Navigator.push(context, MaterialPageRoute(builder: (context) => Dropdownpage()));
      // You can also display a message using a dialog or snackbar

      Navigator.pushNamed(context, '/Dropdownpage');
    } else {}
  }

  @override
  Widget build(BuildContext context) {
   // ignore: unused_local_variable
   final carModel = Provider.of<CarModel>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'GoMatch',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color.fromARGB(255, 247, 245, 245)),
          ),
          backgroundColor: Color.fromARGB(255, 79, 68, 23),
          centerTitle: true,
        ),
        //backgroundColor: Color.fromARGB(255, 25, 2, 91),
        body: Builder(
          builder: (context) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/145.png'), // Path to your image
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 60,
                      width: 170,
                      // alignment: Alignment.center,
                      // decoration: BoxDecoration(
                      //   color: Color.fromARGB(229, 237, 183, 20), // Background color
                      //   borderRadius:
                      //       BorderRadius.circular(12.0), // Rounded borders
                      //  border: Border.all(
                      //    color: const Color.fromARGB(255, 9, 30, 40), // Border color
                      //     width: 2.0, // Border width
                      //   ),
                      //),
                      // child: Text(
                      //   'Welcome!',
                      //   style: TextStyle(
                      //     color: const Color.fromARGB(255, 3, 3, 3), // Text color
                      //     fontSize: 28.0, // Font size
                      //     fontWeight: FontWeight.bold,
                      //     fontFamily: 'Oswald',
                      //   ),
                      //),
                    ),

                    // Text input box
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      style: TextStyle(
                          color: Color.fromARGB(179, 255, 255, 255)),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 29, 144, 197),
                        labelText: 'Name',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: OutlineInputBorder(),
                      ),
                      controller: _nameController,
                    ),
                    SizedBox(
                      height: 10,
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
                            15), // Adds some space between the text input and the button
                    ElevatedButton(
                      onPressed: () => _saveAndCompare(context),
                      style:  ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(228, 0, 0, 0),
                      ),
                      child: Text(buttonName, style: TextStyle(
                        color: Color.fromARGB(255, 243, 237, 237),
                      ),)
                       
                    ),
                    //ElevatedButton(onPressed: () {}, child: Text("Forgot Password")),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      routes: {
        '/Dropdownpage': (context) => Dropdownpage(),
      },
    );
  }
}
class CarModel with ChangeNotifier {
  bool _isBooked = false;
  int _carClicked = 0;
  int _carChosen = 0;
  bool _car2right =false;
  bool _car2left =false;

  bool get isBooked => _isBooked;
  int get carClicked => _carClicked;
  int get carChosen => _carChosen;
  bool get car2left => _car2left;
  bool get car2right => _car2right;
  
  int value3=1;
  int get val3 => value3;
  void incrementcounter()
  {
    value3++;
    notifyListeners();
  }
  void chooseRight()
  {
    _car2right = true;
    notifyListeners();
  }
  void chooseLeft()
  {
    _car2left = true;
    notifyListeners();
  }
  void bookcar(int val)
  {
    _isBooked = true;
    _carChosen = val;
    notifyListeners();

  }
  void unbookcar()
  {
    _isBooked = false;
    _car2left = false;
    _car2right = false;
    notifyListeners();
  }
  void updateCar(int clicked, int chosen, bool booked) {
    _carClicked = clicked;
    _carChosen = chosen;
    _isBooked = booked;
    notifyListeners();
  }
}