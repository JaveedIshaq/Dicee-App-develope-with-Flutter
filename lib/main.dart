import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceImage = 3;
  int rightDiceImage = 5;


  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                         leftDiceImage = Random().nextInt(6) + 1;
                         rightDiceImage = Random().nextInt(6) + 1;
                      });
                      print('image 1 pressed');
                    },
                    child: Image.asset('images/dice$leftDiceImage.png')),
              )
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FlatButton(
                    onPressed: (){
                      setState(() {
                        leftDiceImage = Random().nextInt(6) + 1;
                        rightDiceImage = Random().nextInt(6) + 1;
                      });
                      print("image 2 pressed");

                      },
                    child: Image.asset('images/dice$rightDiceImage.png')
                ),
              )
          )
        ],
      ),
    );
  }
}
