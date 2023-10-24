import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kdhdev/riverpodrandomnumbertest/riverpod_random_number_providers.dart';

@RoutePage()
class RiverpodRandomNumberPage extends HookConsumerWidget {
  const RiverpodRandomNumberPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomNumber = ref.watch(randomNumberProvider);
    final randomNumberNotifier = ref.read(randomNumberProvider.notifier);

    return Scaffold(
      body: Center(
        child: Text('$randomNumber'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => randomNumberNotifier.generate(),
        child: const Icon(Icons.check),
      ),
    );
  }
}
