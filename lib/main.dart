import 'package:flutter/material.dart';

import './screens/home_screen.dart';

void main() {
  runApp(Receptko());
}

class Receptko extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Receptko',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'VisbyRound',
      ),
      home: HomeScreen(),
    );
  }
}
