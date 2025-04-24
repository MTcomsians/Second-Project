//import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

// ignore: must_be_immutable
class Car4 extends StatefulWidget {
  int value2;
  Car4({
    super.key,
    required this.value2,
  });

  @override
  State<Car4> createState() => _car4State();
}

class _car4State extends State<Car4> {
// bool seatSelected=false;
  bool seatSelected = false;
  bool seatbooked = false;

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Bottom Right Seat Available'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Press the icon to select this',
                textAlign: TextAlign.left,
              ),
              IconButton(
                icon: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset('assets/tick.png'),
                ),
                onPressed: () {
                  setState(() {
                    //carModel.incrementcounter();
                  });
                  Navigator.of(context).pop();
                },
              ),
              const SizedBox(height: 10),
            ],
          ),
          // actions: <Widget>[
          //   TextButton(
          //     child: Text('OK'),
          //     onPressed: () {
          //       Navigator.of(context).pop();
          //     },
          //   ),
          // ],
        );
      },
    );
  }

  void _showDialog2() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Driver'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ImageIcon(
                AssetImage("assets/wheel.png"),
                size: 50,
              ),
              SizedBox(height: 10),
              Text('Name: Hamza Ahmed Mir\nGender: Male\nRating: 4.8'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showDialog3() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Front Left Seat'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ImageIcon(
                AssetImage('assets/man.png'),
                size: 40,
              ),
              SizedBox(height: 10),
              Text(
                  'Name: Rohail Bukhari\nAge: 24\nGender: Male\nDestination: Joyland, Ayub Park\nPassenger Rating: 4.6/5'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showDialog4() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Bottom Left Seat'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ImageIcon(AssetImage('assets/man.png'), size: 50),
              SizedBox(height: 10),
              Text(
                  'Name: Ibrahim Bin Umair\nAge: 24\nGender: Male\nDestination: Tops Factory\nPassenger Rating: 5/5'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showDialog6() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Bottom Right Seat'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ImageIcon(AssetImage('assets/man.png'), size: 50),
              SizedBox(height: 10),
              Text(
                  'Name: Ibrahim Bin Umair\nAge: 24\nGender: Male\nPassenger Rating: 5/5'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showDialog5() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Bottom Middle Seat'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ImageIcon(AssetImage('assets/man.png'), size: 50),
              SizedBox(height: 10),
              Text(
                  'Name: Haroon Riasat\nAge: 24\nGender: Male\nDestination: NCA, Army House Road\nPassenger Rating: 4.8/5'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showDialog7() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Bottom Right Seat'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ImageIcon(AssetImage('assets/man.png'), size: 50),
              SizedBox(height: 10),
              Text(
                  'Name: Saad Usman\nAge: 24\nGender: Male\nDestination: Scheme 3\nPassenger Rating: 4.8/5'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final carModel = Provider.of<CarModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Black Honda Civic \nFSB-670',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          textAlign: TextAlign.center,
        ),
      ),
      body: Builder(
        builder: (context) => Container(
          color: Colors.white,
          child: Stack(children: [
            const Positioned(
              top: 65,
              left: 70,
              child: Text(
                'This Car Has Been Fully Booked!',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0), // Text color
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold, // Font size
                ),
                textAlign:
                    TextAlign.left, // Center the text within the Container
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                icon: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset('assets/goodcar.png'),
                ),
                onPressed: () {
                  null;
                },
              ),
            ),
            Positioned(
                bottom: 80,
                right: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(226, 149, 255, 57),
                  ),
                  child: const Text(
                    'Return',
                    style: TextStyle(
                      color: Color.fromARGB(255, 22, 22, 22),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  },
                )),
            Positioned(
              bottom: 150,
              right: 20,
              child: IconButton(
                icon: SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/seat.png'),
                ),
                onPressed: () {
                  _showDialog7();
                },
              ),
            ),
            Positioned(
              top: 50,
              right: 50,
              child: IconButton(
                icon: SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/seat.png'),
                ),
                onPressed: () {
                  _showDialog2();
                },
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: IconButton(
                icon: SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/seat.png'),
                ),
                onPressed: () {
                  _showDialog3();
                },
              ),
            ),
            Positioned(
              bottom: 150,
              left: 20,
              child: IconButton(
                icon: SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/seat.png'),
                ),
                onPressed: () {
                  _showDialog4();
                },
              ),
            ),
            Positioned(
              bottom: 150,
              left: 120,
              child: IconButton(
                icon: SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset('assets/seat.png'),
                ),
                onPressed: () {
                  _showDialog5();
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
