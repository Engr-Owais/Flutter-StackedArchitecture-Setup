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
                waveHeight: MediaQuery.of(context).size.height * 0.2,
                waveColor: Colors.black,
                amplitude: model.amplitude,
                waveMilliseconds: 5000,
                numberOfWave: 6,
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      model.amplitude == 0.0
                          ? "NO ENERGY"
                          : model.amplitude.round() == 56
                              ? "FRIENDLY"
                              : "VERY FRIENDLY",
                      textAlign: TextAlign.end,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.black,
                      inactiveTrackColor: Colors.grey,
                      trackShape: RectangularSliderTrackShape(),
                      trackHeight: 2.0,
                      thumbColor: Colors.black,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 12.0),
                      overlayColor: Colors.red.withAlpha(32),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 28.0),
                    ),
                    child: Slider(
                        value: model.amplitude,
                        max: 120,
                        min: 0,
                        onChanged: (value) {
                          model.changeAmplitude(value);
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "LOW",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                      ),
                      Text(
                        "HIGH",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
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
