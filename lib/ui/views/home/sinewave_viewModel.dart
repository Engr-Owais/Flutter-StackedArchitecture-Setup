import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class SinewaveViewModel extends BaseViewModel {
  double _value= 0.0;
  double get amplitude => _value;

  NavigationService _navigationService = locator<NavigationService>();

  void changeAmplitude(double amp) {
    _value = amp;
    notifyListeners();
  }

  void back() {
    _navigationService.back();
  }
}
