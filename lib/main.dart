import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static AudioCache player = AudioCache();

  void playSound(int SoundNum) {
    final player = AudioCache();
    player.play('note$SoundNum.wav');
  }

  Expanded buildKey({int Num, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(Num);
        },
      ),
    );
  }

  //final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                ///mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildKey(Num: 1, color: Colors.red),
                  buildKey(Num: 2, color: Colors.orange),
                  buildKey(Num: 3, color: Colors.yellow),
                  buildKey(Num: 4, color: Colors.green),
                  buildKey(Num: 5, color: Colors.teal),
                  buildKey(Num: 6, color: Colors.blue),
                  buildKey(Num: 7, color: Colors.purple),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
