import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class SinewaveViewModel extends BaseViewModel {
  double value = 0.0;

  NavigationService _navigationService = locator<NavigationService>();

  void changeAmplitude(double amp) {
    value = amp;
    notifyListeners();
  }

  void back() {
    _navigationService.back();
  }
}
