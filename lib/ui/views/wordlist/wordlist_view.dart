import 'package:flutter/material.dart';
import 'package:staced_app_test/ui/views/wordlist/wordlist_viewModel.dart';
import 'package:staced_app_test/ui/widgets/words_list.dart';
import 'package:stacked/stacked.dart';

class WordListView extends StatelessWidget {
  const WordListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WordListViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 3.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(8, 4.0),
                        blurRadius: 5,
                        color: Colors.black,
                        spreadRadius: 0)
                  ],
                ),
                child: CircleAvatar(
                  radius: 150,
                  backgroundColor: Colors.red,
                ),
              ),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 2.0,
                runSpacing: 4.0,
                children: List<Widget>.generate(model.words.length, (index) {
                  return WordListWidget(
                      text: model.words[index].name!,
                      words: model.words,
                      index: index,
                      selectedList: model.selectedChip,
                      onSelected: (bool value) =>
                          model.chipselection(value, index));
                }),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => WordListViewModel(),
    );
  }
}
