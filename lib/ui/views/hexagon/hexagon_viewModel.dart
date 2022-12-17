import 'package:staced_app_test/ui/views/hexagon/hexagon_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../services/hexagon_service.dart';

class HexagonViewModel extends ReactiveViewModel {
  NavigationService _navigationService = locator<NavigationService>();

  final _hexagonService = locator<HexagonService>();

  List get selected => _hexagonService.selectedItems;
  int get selectedShape => _hexagonService.selectedSape;

  void selectChoice(String text) {
    _hexagonService.selectChoice(text);
  }

  void selectShape(int index) {
    _hexagonService.selectShape(index);
  }

  void navigateToHexagon() {
    _navigationService.navigateToView(HexagonView());
  }

  void back() {
    _navigationService.back();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_hexagonService];
}
