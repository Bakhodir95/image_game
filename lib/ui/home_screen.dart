import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_game/bloc/game_bloc.dart';
import 'package:image_game/bloc/game_event.dart';
import 'package:image_game/bloc/game_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('4 Pics 1 Word'),
      ),
      body: BlocProvider(
        create: (context) => GameBloc()..add(StartGame()),
        child: GameScreen(),
      ),
    );
  }
}

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      // bloc: context.read<GameBloc>()..add(event),
      builder: (context, state) {
        if (state is GameInitial) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is GamePlaying) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '4 Pictures 1 Word',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: state.images.map((image) {
                    return Container(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/$image', fit: BoxFit.cover),
                    );
                  }).toList(),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Let's go",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          );
        } else if (state is GameOver) {
          return Center(
            child: Text('Game Over'),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
