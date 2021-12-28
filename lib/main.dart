import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(
    home: Xylophone(),
  ));
}

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {

    void playSound(int noteNo){
    final player = AudioCache();
    player.play('note$noteNo.wav');
  }

 Expanded button({int soundNo,Color color}) {
   return Expanded(
     child: FlatButton(
       onPressed: () {
         playSound(soundNo);
       },
       color: color,
     ),
   );
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            button(color: Colors.red,soundNo: 1),
            button(color: Colors.orange,soundNo: 2),
            button(color: Colors.yellow,soundNo: 3),
            button(color: Colors.green,soundNo: 4),
            button(color: Colors.teal,soundNo: 5),
            button(color: Colors.blue,soundNo: 6),
            button(color: Colors.purple,soundNo: 7),
          ],
        ),
      ),
    );
  }
}
