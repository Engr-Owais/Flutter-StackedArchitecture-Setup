import 'package:staced_app_test/ui/views/home/home_view.dart';
import 'package:staced_app_test/ui/views/test/test_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    CupertinoRoute(page: TestView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class AppSetup {}
