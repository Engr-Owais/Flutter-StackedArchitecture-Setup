import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  double value = 0.0;

  void changeAmplitude(double amp) {
    value = amp;
    notifyListeners();
  }

  
}
