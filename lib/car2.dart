//import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

// ignore: must_be_immutable
class Car2 extends StatefulWidget {
  int value2;
  Car2({
    super.key,
    required this.value2,
  });

  @override
  State<Car2> createState() => _car2State();
}

class _car2State extends State<Car2> {
// bool seatSelected=false;
  bool seatSelected = false;
  bool seatbooked = false;
  bool rightseatselected = false;
  bool leftseatselected = false;
  bool dialogover = false;
  bool dialog2over = false;

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Bottom Middle Seat'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'This Seat Has Been Selected!',
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
                    dialogover = true;
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

  void _showDialogRight() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Bottom Right Seat'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'This Seat Has Been Selected!',
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
                    dialogover = true;
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
              Text('Name: Ali Qureshi\nGender: Male\nRating: 4.7'),
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
                  'Name: Yaseen Baig\nAge: 24\nGender: Male\nDestination: Cricket Stadium, Rawalpindi\nPassenger Rating: 4.5/5'),
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
                  'Name: Mahsham Babar\nAge: 38\nGender: Male\nDestination: Al-Khidmat Foundation, Marir Hassan\nPassenger Rating: 4.9/5'),
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
          'White Suzuki Bolan \nISB-420',
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
                  child: Image.asset('assets/bigcar.png'),
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
              right: 30,
              child: IconButton(
                icon: ((carModel.isBooked && (carModel.carChosen == 2)) &&
                        carModel.car2right)
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
                      _showDialogRight();
                      seatSelected = true;
                      carModel.bookcar(2);
                      carModel.chooseRight();
                      seatbooked = carModel.isBooked;
                    } else {
                      if (carModel.carChosen == 2) {
                        if (!carModel.car2right) {
                          _showDialogRight();
                          carModel.chooseRight();
                        }
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
              left: 30,
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
            if (carModel.isBooked && (carModel.carChosen == 2))
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
                        if (carModel.isBooked && (carModel.carChosen == 2)) {
                          carModel.unbookcar();
                          seatbooked = false;
                        }
                      });
                    },
                  )),
            Positioned(
              bottom: 150,
              left: 120,
              child: IconButton(
                icon: ((carModel.isBooked && (carModel.carChosen == 2)) &&
                        carModel.car2left)
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
                      carModel.bookcar(2);
                      carModel.chooseLeft();
                    } else {
                      if ((carModel.carChosen == 2) && (!carModel.car2left)) {
                        _showDialog();
                        if (dialogover) {
                          carModel.bookcar(2);
                          carModel.chooseLeft();
                        }
                      }
                    }
                  });
                },
              ),
            ),
            if (carModel.isBooked && (carModel.carChosen == 2))
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
                        if (carModel.isBooked && (carModel.carChosen == 2)) {
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
