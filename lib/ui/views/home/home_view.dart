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
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Spacer(),
          Spacer(),
          SineWavwWidget(
            waveWidth: double.infinity,
            waveHeight: 150,
            waveColor: Colors.black,
            amplitude: model.value,
            waveMilliseconds: 5000,
            numberOfWave: 6,
          ),
          Spacer(),
          Slider(
              value: model.value,
              max: 150,
              min: 0,
              onChanged: (value) {
                model.changeAmplitude(value);
              }),
          Spacer(),
        ]),
      )),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
