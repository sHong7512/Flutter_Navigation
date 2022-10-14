import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:navigation/screen/home_screen.dart';
import 'package:navigation/screen/route_one_screen.dart';
import 'package:navigation/screen/route_thress_screen.dart';
import 'package:navigation/screen/route_two_screen.dart';

const HOME_ROUTE = '/';
const ONE_ROUTE = '/one';
const TWO_ROUTE = '/two';
const THREE_ROUTE = '/three';

void main() {
  runApp(
    MaterialApp(
      // home: HomeScreen(),
      initialRoute: HOME_ROUTE,
      routes: {
        HOME_ROUTE: (context) => HomeScreen(),
        ONE_ROUTE: (context) => RouteOneScreen(),
        TWO_ROUTE: (context) => RouteTwoScreen(),
        THREE_ROUTE: (context) => RouteThreeScreen(),
      },
      navigatorObservers: [MyNavigatorObserver()],
    ),
  );
}

class MyNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    log('didPush');
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    log('didPop');
    super.didPop(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    log('didRemove');
    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({ Route<dynamic>? newRoute, Route<dynamic>? oldRoute }) {
    log('didReplace');
    super.didReplace();
  }
}
