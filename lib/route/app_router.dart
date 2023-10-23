import 'package:auto_route/auto_route.dart';
import 'package:kdhdev/approutertest/app_router_test_page.dart';
import 'package:kdhdev/main_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: MainRoute.page),
        AutoRoute(page: AppRouterTestRoute.page),
      ];
}
