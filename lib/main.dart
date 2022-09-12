import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Xylophone',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: MyApp(),
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {

  void playNote(int number){
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Widget buildNotes(Color color, int number){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playNote(number);
        },
        color: color,
        child: Container(),
      ),
    );
  }


  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildNotes(Colors.red, 1),
          buildNotes(Colors.orange,2),
          buildNotes(Colors.yellow,3),
          buildNotes(Colors.green,4),
          buildNotes(Colors.lightBlue,5),
          buildNotes(Colors.blue,6),
          buildNotes(Colors.purple,7)
        ],
      ),
    );
  }
}
