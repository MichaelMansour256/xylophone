import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void plays(int num) {
    final p1 = AudioCache();
    p1.play('note$num.wav');
  }

  Expanded bulidKey(Color x, int y) {
    return Expanded(
      child: FlatButton(
        color: x,
        onPressed: () {
          plays(y);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            bulidKey(Colors.red, 1),
            bulidKey(Colors.orange, 2),
            bulidKey(Colors.yellow, 3),
            bulidKey(Colors.green, 4),
            bulidKey(Colors.green[900], 5),
            bulidKey(Colors.blue, 6),
            bulidKey(Colors.purple, 7),
          ],
        )),
      ),
    );
  }
}
