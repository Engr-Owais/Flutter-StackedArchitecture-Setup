// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/cupertino.dart' as _i4;
import 'package:flutter/material.dart';
import 'package:staced_app_test/ui/views/home/sinewave.dart' as _i2;
import 'package:staced_app_test/ui/views/hexagon/hexagon_view.dart' as _i3;
import 'package:staced_app_test/ui/views/menu/menu_view.dart' as _i6;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i5;

class Routes {
  static const menuView = '/';
  static const homeView = '/home-view';
  static const testView = '/test-view';

  static const all = <String>{
    homeView,
    testView,
    menuView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.SinewaveView,
    ),
    _i1.RouteDef(
      Routes.testView,
      page: _i3.HexagonView,
    ),
    _i1.RouteDef(
      Routes.menuView,
      page: _i6.MenuView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SinewaveView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.SinewaveView(),
        settings: data,
      );
    },
    _i3.HexagonView: (data) {
      return _i4.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i3.HexagonView(),
        settings: data,
      );
    },
    _i6.MenuView: (data) {
      return _i4.CupertinoPageRoute<dynamic>(
        builder: (context) => const _i6.MenuView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i5.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToTestView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.testView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
