import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Drummer extends StatefulWidget {
  const Drummer({Key? key}) : super(key: key);

  @override
  _DrummerState createState() => _DrummerState();
}

class _DrummerState extends State<Drummer> {
  final player = AudioCache();

  void playSong(String songName) {
    player.play('$songName.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildDrumPad('bip', Colors.greenAccent),
                buildDrumPad('bongo', Colors.redAccent),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildDrumPad('clap1', Colors.deepOrangeAccent),
                buildDrumPad('clap2', Colors.deepPurpleAccent),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildDrumPad('clap3', Colors.brown),
                buildDrumPad('crash', Colors.blueAccent),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildDrumPad('how', Colors.purpleAccent),
                buildDrumPad('oobah', Colors.teal),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildDrumPad('ridebel', Colors.yellowAccent),
                buildDrumPad('woo', Colors.indigo),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextButton buildDrumPad(String songName, Color color) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: color, padding: EdgeInsets.all(95)),
      child: Container(),
      onPressed: () => playSong(songName),
    );
  }
}
