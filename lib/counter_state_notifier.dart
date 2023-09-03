import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterStateNotifier extends StateNotifier<int> {
  CounterStateNotifier() : super(0);

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}

final counterStateProvider =
    StateNotifierProvider<CounterStateNotifier, int>((ref) {
  return CounterStateNotifier();
});
