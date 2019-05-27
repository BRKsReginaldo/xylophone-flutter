import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SoundKey(
                color: Colors.blue,
                player: player,
                file: 'note1.wav',
              ),
              SoundKey(
                color: Colors.red,
                player: player,
                file: 'note2.wav',
              ),
              SoundKey(
                color: Colors.green,
                player: player,
                file: 'note3.wav',
              ),
              SoundKey(
                color: Colors.orange,
                player: player,
                file: 'note3.wav',
              ),
              SoundKey(
                color: Colors.purple,
                player: player,
                file: 'note4.wav',
              ),
              SoundKey(
                color: Colors.yellow,
                player: player,
                file: 'note5.wav',
              ),
              SoundKey(
                color: Colors.indigo,
                player: player,
                file: 'note6.wav',
              ),
              SoundKey(
                color: Colors.teal,
                player: player,
                file: 'note7.wav',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SoundKey extends StatelessWidget {
  final Color color;
  final String file;
  final AudioCache player;

  SoundKey({this.color, this.file, this.player}) {}

  void playSound() {
    player.play(file);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        color: color,
        padding: EdgeInsets.all(0),
        onPressed: playSound,
        child: Container(),
      ),
    );
  }
}
