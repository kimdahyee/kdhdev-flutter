import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kdhdev/route/app_router.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {
            context.router.push(const AppRouterTestRoute());
          },
          child: const Text('app router'),
        ),
      ),
    );
  }
}
