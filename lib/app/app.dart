import 'package:staced_app_test/ui/views/home/sinewave.dart';
import 'package:staced_app_test/ui/views/hexagon/hexagon_view.dart';
import 'package:staced_app_test/ui/views/menu/menu_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: MenuView, initial: true),
    CupertinoRoute(page: SinewaveView),
    CupertinoRoute(page: HexagonView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class AppSetup {}
