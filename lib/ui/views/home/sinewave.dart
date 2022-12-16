import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staced_app_test/ui/widgets/sinewave_widget.dart';
import 'package:stacked/stacked.dart';
import 'sinewave_viewModel.dart';

class SinewaveView extends StatelessWidget {
  const SinewaveView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SinewaveViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  model.back();
                },
                icon: Icon(Icons.arrow_back_ios)),
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Spacer(),
              SineWavwWidget(
                waveWidth: MediaQuery.of(context).size.width,
                waveHeight: MediaQuery.of(context).size.height * 0.3,
                waveColor: Colors.black,
                amplitude: model.value,
                waveMilliseconds: 5000,
                numberOfWave: 6,
              ),
              Column(
                children: [
                  Slider(
                      value: model.value,
                      max: 120,
                      min: 0,
                      inactiveColor: Colors.amber,
                      activeColor: Colors.black,
                      thumbColor: Colors.black,
                      onChanged: (value) {
                        model.changeAmplitude(value);
                      }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("MIN"),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                      ),
                      Text("MAX"),
                    ],
                  ),
                ],
              ),
              Spacer(),
            ]),
          )),
      viewModelBuilder: () => SinewaveViewModel(),
    );
  }
}
