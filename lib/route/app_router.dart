import 'package:auto_route/auto_route.dart';
import 'package:kdhdev/approutertest/app_router_test_page.dart';
import 'package:kdhdev/main_page.dart';
import 'package:kdhdev/riverpodcountertest/riverpod_counter_page.dart';
import 'package:kdhdev/riverpodrandomnumbertest/riverpod_random_number_page.dart';
import 'package:kdhdev/riverpodretrofittest/retrofit_test_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: MainRoute.page),
        AutoRoute(page: AppRouterTestRoute.page),
        AutoRoute(page: RiverpodCounterRoute.page),
        AutoRoute(page: RiverpodRandomNumberRoute.page),
        AutoRoute(page: RiverpodRetrofitRoute.page),
      ];
}
