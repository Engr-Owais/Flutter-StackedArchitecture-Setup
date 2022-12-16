import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'menu_viewModel.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MenuViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text("Menu"),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    model.navigateToSineWave();
                  },
                  child: Text("GO TO SINEWAVE"),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    model.navigateToHexagon();
                  },
                  child: Text("GO TO HEXAGON"),
                ),
              ]),
        ),
      ),
      viewModelBuilder: () => MenuViewModel(),
    );
  }
}
