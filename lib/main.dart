import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void soundPlayer(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required Color myColor, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          soundPlayer(soundNumber);
        },
        style: TextButton.styleFrom(
          backgroundColor: myColor, // Text Color
        ),
        child: Container(),
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
              buildKey(myColor: Colors.green, soundNumber: 1),
              buildKey(myColor: Colors.yellow, soundNumber: 2),
              buildKey(myColor: Colors.red, soundNumber: 3),
              buildKey(myColor: Colors.black, soundNumber: 4),
              buildKey(myColor: Colors.green, soundNumber: 5),
              buildKey(myColor: Colors.yellow, soundNumber: 6),
              buildKey(myColor: Colors.red, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
