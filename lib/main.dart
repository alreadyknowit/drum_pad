import 'package:flutter/material.dart';
import 'drummer.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.grey,
      home: Scaffold(backgroundColor: Colors.black, body: Drummer()),
    );
  }
}
