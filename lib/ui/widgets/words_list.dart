import 'package:flutter/material.dart';

import '../../models/fakeData.dart';

class WordListWidget extends StatelessWidget {
  final String text;
  final List<FakeData> words;
  final List selectedList;
  final int index;
  final Function(bool)? onSelected;
  WordListWidget(
      {Key? key,
      required this.text,
      required this.words,
      this.onSelected,
      required this.selectedList,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        backgroundColor: Colors.white,
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            width: 2.0,
            color: Colors.black,
          ),
        ),
        label: Text(
          text,
          style: TextStyle(
              color: selectedList.contains(words[index].name)
                  ? Colors.white
                  : Colors.black),
        ),
        selected: selectedList.contains(words[index].name),
        selectedColor: Colors.black,
        onSelected: onSelected);
  }
}
