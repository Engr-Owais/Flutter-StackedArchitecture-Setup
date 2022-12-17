import 'package:staced_app_test/models/fakeData.dart';
import 'package:stacked/stacked.dart';

class WordListViewModel extends BaseViewModel {
  List<String> selectedChip = [];
  List<FakeData> words = [
    FakeData(name: 'Feeling Understood'),
    FakeData(name: 'Tenacious'),
    FakeData(name: 'Embraced'),
    FakeData(name: 'Feeling Included'),
    FakeData(name: 'Creative'),
    FakeData(name: 'Thoughtful'),
    FakeData(name: 'Concerned'),
    FakeData(name: 'Cautious'),
    FakeData(name: 'Overwhelmed'),
    FakeData(name: 'Creati'),
    FakeData(name: 'Embraced'),
    FakeData(name: 'Caution'),
  ];

  void chipselection(bool selected, int index) {
    if (selected) {
      selectedChip.add(words[index].name!);
    } else {
      selectedChip.removeWhere((name) {
        return name == words[index].name;
      });
    }
    notifyListeners();
  }
}
