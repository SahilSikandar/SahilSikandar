import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int r=1;
  int l=1;
  void diceface(){
  setState(() {
    r=Random().nextInt(6)+1;
    l=Random().nextInt(6)+1;
  });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dice Play',style: TextStyle(
            color:Colors.white,
          ),),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(child: FlatButton(onPressed: (){
                diceface();
              },
              child: Image.asset("assets/img$l.png"))),
              Expanded(
                  child: FlatButton(onPressed:() {
                    diceface();
                  },
              child: Image.asset("assets/img$r.png")))
            ],
          ),
        ),
      ),
    );
  }
}