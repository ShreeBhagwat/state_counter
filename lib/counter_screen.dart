import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_counter/counter_state_notifier.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Counter'),
      ),
      body: Center(
        child: Text(
          counter.toString(),
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              ref.read(counterStateProvider.notifier).decrement();
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              ref.read(counterStateProvider.notifier).increment();
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
