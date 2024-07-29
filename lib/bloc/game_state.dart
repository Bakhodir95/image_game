abstract class GameState {}

class GameInitial extends GameState {}

class GamePlaying extends GameState {
  final List<String> images;
  GamePlaying(this.images);
}

class GameOver extends GameState {}
