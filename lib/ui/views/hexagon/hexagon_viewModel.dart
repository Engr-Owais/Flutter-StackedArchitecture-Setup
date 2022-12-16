import 'package:flutter/material.dart';
import 'package:staced_app_test/ui/views/hexagon/hexagon_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class HexagonViewModel extends BaseViewModel {
  NavigationService _navigationService = locator<NavigationService>();
  int _selectedItem = 0;
  int get selectedItem => _selectedItem;

  List _selectedItems = [];
  List get selected => _selectedItems;

  Color _color = Colors.red;

  Color get color => _color;

  void selectChoice(String text) {
    if (_selectedItems.contains(text)) {
      _selectedItems.remove(text);
    } else {
      _selectedItems.add(text);
    }
    notifyListeners();
  }

  void selectShape(int index) {
    _selectedItem = index;
    notifyListeners();
  }

  void changeColor(Color ccolor) {
    _color = ccolor;
    notifyListeners();
  }

  void navigateToHexagon() {
    _navigationService.navigateToView(HexagonView(
      selectedShape: selectedItem,
      shapeColor: color,
    ));
  }

  void back() {
    _navigationService.back();
  }
}
