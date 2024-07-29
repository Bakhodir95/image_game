import 'package:flutter/material.dart';
import 'package:image_game/ui/home_screen.dart';
import 'package:image_game/ui/initial_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitialScreen(),
    );
  }
}
