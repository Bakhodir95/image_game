import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:image_game/models/puzzle.dart';
import 'game_event.dart';
import 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  List<Puzzle> quizzes = [
    Puzzle(
        images: [
          Image.asset("images/image1.png"),
          Image.asset("images/image2.png"),
          Image.asset("images/image3.png"),
          Image.asset("images/image4.png"),
        ],
        answer: "island",
        hint: ["i", "r", "s", "l", "a", "n", "d", "o"]),
  ];

  GameBloc(super.initialState);
}
