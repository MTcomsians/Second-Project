import 'package:flutter/material.dart';
import 'package:helloworld/map.dart';

class Dropdownpage extends StatefulWidget {
  const Dropdownpage({super.key});

  @override
  State<Dropdownpage> createState() => _MyAppState();
}

class _MyAppState extends State<Dropdownpage> {
  String _selectedOption = 'Ayub Park';
  String _selectedDropoff = 'Liaquat Bagh';

  void _navigateToDisplayScreen() {
    String enteredName = _selectedOption;
    String enteredPassword = _selectedDropoff;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DisplayScreen(
          name: enteredName,
          password: enteredPassword,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Selection Page',
          style: TextStyle(color: Color.fromARGB(255, 247, 245, 245)),
        ),
        backgroundColor: const Color.fromARGB(255, 2, 1, 0),
        centerTitle: true,
      ),
      body: Builder(
        builder: (context) => Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/page2.png'), // Path to your image
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //SizedBox(width: 20,),
                Container(
                  width: 250,
                  height: 40,
                  padding: const EdgeInsets.only(top: 15.0),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(0, 0, 0, 0), // Background color
                    //borderRadius:
                    //  BorderRadius.circular(8.0), // Rounded borders
                    //border: Border.all(
                    //color: Colors.blueAccent, // Border color
                    // width: 0.9, // Border width
                    //),
                  ),
                  child: const Text(
                    'Choose Pickup:',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), // Text color
                      fontSize: 18.0, // Font size
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign:
                        TextAlign.left, // Center the text within the Container
                  ),
                ),
                //const SizedBox(height: 5),
                Container(
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 128, 124, 124),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      alignment: Alignment.center,
                      style: const TextStyle(
                          fontSize: 20, color: Color.fromARGB(179, 3, 3, 3)),
                      dropdownColor: const Color.fromARGB(255, 211, 208, 195),
                      value: _selectedOption,
                      items: <String>[
                        'Ayub Park',
                        'Joyland',
                        'Al Shifa',
                        'Gulistan Colony, Lane 7-b'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedOption = newValue!;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 250,
                  height: 40,
                  padding: const EdgeInsets.only(top: 15.0),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(0, 0, 0, 0), // Background color
                    //borderRadius:
                    //  BorderRadius.circular(8.0), // Rounded borders
                    //border: Border.all(
                    //color: Colors.blueAccent, // Border color
                    // width: 0.9, // Border width
                    //),
                  ),
                  child: const Text(
                    'Choose Dropoff:',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), // Text color
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold, // Font size
                    ),
                    textAlign:
                        TextAlign.left, // Center the text within the Container
                  ),
                ),
                Container(
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 128, 124, 124),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      alignment: Alignment.center,
                      style: const TextStyle(
                          fontSize: 18, color: Color.fromARGB(179, 17, 16, 16)),
                      dropdownColor: const Color.fromARGB(255, 148, 124, 19),
                      value: _selectedDropoff,
                      items: <String>[
                        'Liaquat Bagh',
                        'NCA',
                        'Liaquat Bagh Metro Station',
                        'RDA Office'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedDropoff = newValue!;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 8),

                ElevatedButton(
                  onPressed: _navigateToDisplayScreen,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 0, 0)),
                  child: const Text("Confirm",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(179, 255, 255, 255))),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 0, 0)),
                    child: const Text(
                      "LogOut",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(179, 255, 255, 255)),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
