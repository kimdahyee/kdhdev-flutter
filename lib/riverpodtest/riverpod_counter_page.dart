import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kdhdev/riverpodtest/riverpod_counter_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

@RoutePage()
class RiverpodCounterPage extends HookConsumerWidget {
  const RiverpodCounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(counterProvider);
    return const Scaffold();
  }
}
