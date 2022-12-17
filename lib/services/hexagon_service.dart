import 'package:stacked/stacked.dart';

class HexagonService with ReactiveServiceMixin {
  int _selectedShape = 0;
  int get selectedSape => _selectedShape;
  final _selectedItems = ReactiveValue<List>([]);
  List get selectedItems => _selectedItems.value;

  HexagonService() {
    listenToReactiveValues([_selectedItems]);
  }


  void selectChoice(String text) {
    if (_selectedItems.value.contains(text)) {
      _selectedItems.value.remove(text);
    } else {
      _selectedItems.value.add(text);
    }
    notifyListeners();
  }

  void selectShape(int index) {
    _selectedShape = index;
    notifyListeners();
  }
}
