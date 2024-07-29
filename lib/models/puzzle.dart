import 'package:flutter/material.dart';

class Puzzle {
  final List<Widget> images;
  final List<String> hint;
  final String answer;

  Puzzle({
    required this.images,
    required this.answer,
    required this.hint,
  });
}
