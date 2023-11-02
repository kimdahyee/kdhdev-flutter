import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'riverpod_random_number_providers.g.dart';

@riverpod
class RandomNumber extends _$RandomNumber {
  @override
  int build() {
    print('kyk / build / provider');
    return 0;
  }

  void generate() {
    final random = Random().nextInt(9999);
    print('kyk / asis = $state / tobe = $random');
    state = random;
  }
}
