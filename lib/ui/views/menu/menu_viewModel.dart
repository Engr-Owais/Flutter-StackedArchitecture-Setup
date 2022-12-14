import 'package:staced_app_test/app/app.locator.dart';
import 'package:staced_app_test/app/app.router.dart';
import 'package:staced_app_test/ui/views/hexagon/widgets/select_shape.dart';
import 'package:staced_app_test/ui/views/wordlist/wordlist_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MenuViewModel extends BaseViewModel {
  NavigationService _navigationService = locator<NavigationService>();

  void navigateToSineWave() {
    _navigationService.navigateTo(Routes.homeView);
  }

  void navigateToSelectShape() {
    _navigationService.navigateToView(SelectShapeView());
  }

  void navigateToHexagon() {
    _navigationService.navigateTo(Routes.testView);
  }

   void navigateToWordsList() {
    _navigationService.navigateToView(WordListView());
  }
}
