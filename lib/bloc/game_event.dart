abstract class GameEvent {}

class StartGame extends GameEvent {}

class SelectImage extends GameEvent {
  final int index;
  SelectImage(this.index);
}
