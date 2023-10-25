import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kdhdev/route/app_router.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              context.router.push(const AppRouterTestRoute());
            },
            child: const Text('app router'),
          ),
          const SizedBox(
            height: 6,
          ),
          ElevatedButton(
            onPressed: () {
              context.router.push(const RiverpodCounterRoute());
            },
            child: const Text('riverpod-counter'),
          ),
          const SizedBox(
            height: 6,
          ),
          ElevatedButton(
            onPressed: () {
              context.router.push(const RiverpodRandomNumberRoute());
            },
            child: const Text('riverpod-random-number'),
          ),
          const SizedBox(
            height: 6,
          ),
          ElevatedButton(
            onPressed: () {
              context.router.push(const RiverpodRetrofitRoute());
            },
            child: const Text('riverpod-retrofit'),
          ),
        ],
      ),
    );
  }
}
