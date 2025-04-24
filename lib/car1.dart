//import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

// ignore: must_be_immutable
class Car1 extends StatefulWidget {
  int value2;
  Car1({
    super.key,
    required this.value2,
  });

  @override
  State<Car1> createState() => _car1State();
}

class _car1State extends State<Car1> {
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
              Text('Name: Shah Rafaqat\nGender: Male\nRating: 4.9'),
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
                AssetImage('assets/woman.png'),
                size: 40,
              ),
              SizedBox(height: 10),
              Text(
                  'Name: Ayeshah Chaudry\nAge: 24\nGender: Female\nDestination: SPD Office, Rawal Road\nPassenger Rating: 4.5/5'),
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
                  'Name: Affan Anwar\nAge: 22\nGender: Male\nDestination: APSACS, Rawal Road\nPassenger Rating: 4.9/5'),
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
          'White Suzuki Mehran \nCSR-120',
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          textAlign: TextAlign.center,
        ),
      ),
      body: Builder(
        builder: (context) => Container(
          color: Colors.white,
          child: Stack(children: [
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                icon: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset('assets/car.png'),
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
              right: 50,
              child: IconButton(
                icon: (carModel.isBooked && carModel.carChosen == 1)
                    ? SizedBox(
                        width: 150,
                        height: 150,
                        child: Image.asset('assets/seat3.png'),
                      )
                    : SizedBox(
                        width: 150,
                        height: 150,
                        child: Image.asset('assets/seat2.png'),
                      ),
                onPressed: () {
                  setState(() {
                    if (!carModel.isBooked) {
                      _showDialog();
                      seatSelected = true;
                      carModel.bookcar(1);
                      seatbooked = carModel.isBooked;
                    } else {
                      if (carModel.carChosen != 1) {
                        null;
                      }
                    }
                  });
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
              left: 50,
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
            if (carModel.isBooked && (carModel.carChosen == 1))
              Positioned(
                  right: 20,
                  bottom: 30,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(226, 254, 29, 9),
                    ),
                    child: const Text(
                      'Unbook Car',
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    onPressed: () {
                      setState(() {
                        if (carModel.isBooked && (carModel.carChosen == 1)) {
                          carModel.unbookcar();
                          seatbooked = false;
                        }
                      });
                    },
                  ))
          ]),
        ),
      ),
    );
  }
}
