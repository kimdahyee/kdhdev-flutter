import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kdhdev/riverpodrandomnumbertest/riverpod_random_number_providers.dart';

@RoutePage()
class RiverpodRandomNumberPage extends HookConsumerWidget {
  const RiverpodRandomNumberPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final randomNumber = ref.watch(randomNumberProvider);
    // observe
    // kyk / build / provider
    // kyk / build / widget
    // kyk / asis = 0 / tobe = 8412
    // kyk / build / widget
    // final randomNumberNotifier = ref.read(randomNumberProvider.notifier);
    // controller
    // kyk / build / provider
    // kyk / build / widget
    // kyk / asis = 0 / tobe = 3219
    // kyk / asis = 3219 / tobe = 7900
    // kyk / asis = 7900 / tobe = 2779

    print('kyk / build / widget');

    return Scaffold(
      body: Center(
        // child: Text('$randomNumber'),
        child: Text(''),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () => randomNumberNotifier.generate(),

        // onPressed: () => ref.read(randomNumberProvider.notifier).generate(),
        // kyk / build / widget
        // kyk / build / provider
        // kyk / asis = 0 / tobe = 2298
        // kyk / build / provider
        // kyk / asis = 0 / tobe = 2602
        // kyk / build / provider
        // kyk / asis = 0 / tobe = 4536

        onPressed: () {
          int a = ref.read(randomNumberProvider);
          print('kyk / provider read = $a');
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}
