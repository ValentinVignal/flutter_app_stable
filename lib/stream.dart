import 'dart:async';

class StreamService {
  static var _current = 0;
  static final _streamController = StreamController<int>();
  static Stream<int> get stream => _streamController.stream;
  static void add() {
    _streamController.add(_current++);
  }
}
