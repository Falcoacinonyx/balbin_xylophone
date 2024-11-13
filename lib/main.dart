import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

void playSound(int note){
  final player = AudioPlayer();
  player.play(AssetSource('note$note.wav'));
}

Expanded keys(MaterialColor keyColor,int note){
  return Expanded(
    child: TextButton(
        style: TextButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          backgroundColor: keyColor,
        ),
        onPressed: (){
          playSound(note);
        },
        child: Container()
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              keys(Colors.red, 1),
              keys(Colors.orange, 2),
              keys(Colors.yellow, 3),
              keys(Colors.green, 4),
              keys(Colors.teal, 5),
              keys(Colors.blue, 6),
              keys(Colors.deepPurple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
