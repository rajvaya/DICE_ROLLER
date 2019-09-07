import 'package:flutter/material.dart';
import 'package:flutter_app/DiceRoll.dart';



void main() => runApp(myapp());


class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'flutter demo',
     home: Roll(),
     theme: ThemeData(
       primaryColor: Colors.blueGrey
     ),
   );
  }
}