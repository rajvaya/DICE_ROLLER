import 'dart:math';

import 'package:flutter/material.dart';


class Roll extends StatefulWidget {
  @override
  _RollState createState() => _RollState();
}


class _RollState extends State<Roll> {

  AssetImage one  = AssetImage('img/one.png');
  AssetImage two  = AssetImage('img/two.png');
  AssetImage three  = AssetImage('img/three.png');
  AssetImage four  = AssetImage('img/four.png');
  AssetImage five  = AssetImage('img/five.png');
  AssetImage six  = AssetImage('img/six.png');
  AssetImage dice;
  AssetImage newdice;



  void DiceRoll() {

    int Rand = (Random().nextInt(6)+1);

    switch (Rand)
    {
      case 1:
        newdice = one;
        break;
      case 2:
        newdice = two;
        break;
      case 3:
        newdice = three;
        break;
      case 4:
        newdice = four;
        break;
      case 5:
        newdice = five;
        break;
      case 6:
        newdice = six;
        break;

    }



    setState(() {
      dice = newdice;

    });



  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dice = one;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(title: Text("Roll a Dice"),),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(image: dice,width: 150,height: 150),
              SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: RaisedButton(onPressed: DiceRoll,child: Text('Click To Roll'),color: Colors.blueGrey,),
              )
            ],
          ),
        ),
      ),
    );
  }
}

