import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';

void main() => runApp(SoundPlay());

class SoundPlay extends StatelessWidget {
  void playSound(int SoundNum) {
    final player = AudioCache();
    player.play('note$SoundNum.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  playSound(1);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
