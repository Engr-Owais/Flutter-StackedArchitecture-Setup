import 'package:flutter/material.dart';
import 'package:staced_app_test/app/app.locator.dart';
import 'package:staced_app_test/ui/views/hexagon/hexagon_view.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/app.router.dart';
// import 'package:stacked_services/stacked_services.dart';

// import 'app/app.router.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
