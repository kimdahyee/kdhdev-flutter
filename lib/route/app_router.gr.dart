// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AppRouterTestRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AppRouterTestPage(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    RiverpodCounterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RiverpodCounterPage(),
      );
    },
  };
}

/// generated route for
/// [AppRouterTestPage]
class AppRouterTestRoute extends PageRouteInfo<void> {
  const AppRouterTestRoute({List<PageRouteInfo>? children})
      : super(
          AppRouterTestRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppRouterTestRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RiverpodCounterPage]
class RiverpodCounterRoute extends PageRouteInfo<void> {
  const RiverpodCounterRoute({List<PageRouteInfo>? children})
      : super(
          RiverpodCounterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RiverpodCounterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
