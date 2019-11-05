import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {


  void playSound(int musicNum){
    final player = AudioCache();
    player.play('note$musicNum.wav');
  }

  Expanded buildKey(Color color,int keyNum){
    return Expanded(
      child: InkWell(
        onTap: () => print('OnTap'),
        enableFeedback: false,
        child: FlatButton(

          color: color,
          onPressed: (){
            playSound(keyNum);
          },
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red,1),
              buildKey(Colors.orange,2),
              buildKey(Colors.yellow,3),
              buildKey(Colors.green,4),
              buildKey(Colors.blue,5),
              buildKey(Colors.cyanAccent,6),
              buildKey(Colors.purple,7),
            ],
          )
        ),
      ),
    );
  }
}
