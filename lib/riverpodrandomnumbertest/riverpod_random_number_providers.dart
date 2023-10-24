import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'riverpod_random_number_providers.g.dart';

@riverpod
class RandomNumber extends _$RandomNumber {
  @override
  int build() => 0;

  void generate() {
    state = Random().nextInt(9999);
  }
}
