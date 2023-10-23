import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AppRouterTestPage extends StatefulWidget {
  const AppRouterTestPage({super.key});

  @override
  State<AppRouterTestPage> createState() => _AppRouterTestPageState();
}

class _AppRouterTestPageState extends State<AppRouterTestPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Text('app_router'));
  }
}
