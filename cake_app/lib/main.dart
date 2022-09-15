import 'package:cake_app/screen/first_screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(OneButton());

class OneButton extends StatelessWidget {
  const OneButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}


//ODRADITI COUNTER KOD KUCE, IMPLEMENTIRATI GA U OSTAVLJENI COLUMN TE PROBARI RJESITI DUGMADI I PREBACIVANJE TORTE. 