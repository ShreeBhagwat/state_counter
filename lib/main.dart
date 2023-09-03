import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_counter/counter_screen.dart';

void main() {
  runApp(ProviderScope(child: StateCounter()));
}

class StateCounter extends StatelessWidget {
  const StateCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
    );
  }
}
