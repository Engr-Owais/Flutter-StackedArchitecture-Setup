import 'package:staced_app_test/app/app.locator.dart';
import 'package:staced_app_test/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MenuViewModel extends BaseViewModel {
  NavigationService _navigationService = locator<NavigationService>();

  void navigateToSineWave() {
    _navigationService.navigateTo(Routes.homeView);
  }

  void navigateToHexagon() {
    _navigationService.navigateTo(Routes.testView);
  }
}
