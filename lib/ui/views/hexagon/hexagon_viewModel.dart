import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class HexagonViewModel extends BaseViewModel {
  NavigationService _navigationService = locator<NavigationService>();

  void back() {
    _navigationService.back();
  }
}
