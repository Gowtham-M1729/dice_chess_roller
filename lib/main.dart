import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.orange,
          appBar: AppBar(
            title: Text('Chess Dice Roller'),
            backgroundColor: Colors.red,
          ),
          body: DicePage(),
        ),
        debugShowCheckedModeBanner: false),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftnum = 1, rightnum = 2, middlenum = 4;
  void changediceFacenum() {
    leftnum = Random().nextInt(6) + 1;
    rightnum = Random().nextInt(6) + 1;
    middlenum = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  setState(() {
                    changediceFacenum();
                  });
                },
                child: Image.asset('images/chess$leftnum.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  setState(() {
                    changediceFacenum();
                  });
                },
                child: Image.asset('images/chess$rightnum.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {
                  setState(() {
                    changediceFacenum();
                  });
                },
                child: Image.asset('images/chess$middlenum.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
