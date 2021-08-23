import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildButton(Colors.lightGreenAccent, 1),
            buildButton(Colors.yellow, 2),
            buildButton(Colors.orange, 3),
            buildButton(Colors.red, 4),
            buildButton(Colors.blue, 5),
            buildButton(Colors.pink, 6),
            buildButton(Colors.purple, 7),
          ],
        )),
      ),
    );
  }

  Expanded buildButton(Color color, int sound) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            backgroundColor: MaterialStateProperty.all<Color>(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.zero))),
        onPressed: () {
          player.play('note$sound.wav');
        },
        child: Text(""),
      ),
    );
  }
}
