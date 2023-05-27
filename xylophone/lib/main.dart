import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playsound(int soundnumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundnumber.wav'),
    );
  }

  Expanded buildkey({int number, Color colorname}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playsound(number);
        },
        style: TextButton.styleFrom(
          backgroundColor: colorname,
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(number: 1, colorname: Colors.red),
              buildkey(number: 2, colorname: Colors.orange),
              buildkey(number: 3, colorname: Colors.yellow),
              buildkey(number: 4, colorname: Colors.green),
              buildkey(number: 5, colorname: Colors.teal),
              buildkey(number: 6, colorname: Colors.blue),
              buildkey(number: 7, colorname: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
