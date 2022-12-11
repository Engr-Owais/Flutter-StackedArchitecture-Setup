import 'package:flutter/material.dart';
import 'package:staced_app_test/ui/widgets/sinewave_widget.dart';
import 'package:stacked/stacked.dart';

import 'home_viewModel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: SineWavwWidget(
            waveWidth: double.infinity,
            waveHeight: 150,
            waveColor: Colors.red,
            amplitude: 15,
            waveMilliseconds: 5000,
            numberOfWave: 4,
          ),
        ),
      )),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
