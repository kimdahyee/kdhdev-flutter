import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kdhdev/riverpodcountertest/riverpod_counter_providers.dart';

@RoutePage()
class RiverpodCounterPage extends HookConsumerWidget {
  const RiverpodCounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // WidgetRe은 provider를 참조할 수 있도록 도와주는 객체

    final counter = ref.watch(counterProvider);
    // watch는 provider 값을 얻어서 변화를 모니터리 할 때 사용
    final counterNotifier = ref.read(counterProvider.notifier);
    // read는 어떤 부가적인 효과 없이 provider의 상태 값을 가지고 올 때 사용

    return Scaffold(
      body: Center(
        child: Text('$counter'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            // The read method is a utility to read a provider without listening to it
            onPressed: () => counterNotifier.increment(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            // The read method is a utility to read a provider without listening to it
            onPressed: () => counterNotifier.decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
