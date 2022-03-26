import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());


class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    void playSound(int soundNum){
      final player = AudioCache();
      player.play('note$soundNum.wav');
    }

     Expanded buttonKey({required Color color , required int soundNum}) {
      return Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
          ),
          onPressed: () {
            playSound(soundNum);
          },
          child: Text(""),

        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buttonKey(color: Colors.purple, soundNum: 1),
              buttonKey(color: Colors.indigo, soundNum: 2),
              buttonKey(color: Colors.blue, soundNum: 3),
              buttonKey(color: Colors.green, soundNum: 4),
              buttonKey(color: Colors.yellow, soundNum: 5),
              buttonKey(color: Colors.orange, soundNum: 6),
              buttonKey(color: Colors.red, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
