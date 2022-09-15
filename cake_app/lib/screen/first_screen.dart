import 'package:cake_app/screen/second_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cake App',
          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
        ),
        backgroundColor: Color.fromARGB(255, 59, 33, 104),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: ElevatedButton(
            child: const Text(
              'Enter',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 59, 33, 104),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
