import 'package:riverpod/riverpod.dart';

class CounterState extends StateNotifier<int>{
  CounterState() : super(0);

  void incrementCounter() {
    state++;
  }

  void decrementCounter() {
    state > 0 ? state-- : state = 0;
  }
}
