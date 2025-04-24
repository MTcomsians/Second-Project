
import 'package:flutter/material.dart';
 
 
 class Dropdownpage extends StatefulWidget {
  const Dropdownpage({super.key});

 

  @override
  State<Dropdownpage> createState() => _MyAppState();
}

class _MyAppState extends State<Dropdownpage> {
  
  String _selectedOption ='a';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown Menu Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              value: _selectedOption,
              items: <String>['a', 'b', 'c', 'd']
                  .map<DropdownMenuItem<String>>((String value) {
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
            const SizedBox(height: 20),
            Text(
              'Selected Option: $_selectedOption',
              style: const TextStyle(fontSize: 16),
            ),
          ElevatedButton(
            child:const Text("Go back"),
            
            onPressed: ()
            {
              Navigator.pop(context);
            }

          ),
          ],
        ),
      ),
    );
  }
}