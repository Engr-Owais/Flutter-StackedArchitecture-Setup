import 'package:flutter/material.dart';
import 'package:staced_app_test/ui/views/hexagon/hexagon_viewModel.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/hexagon_widget.dart';

class HexagonView extends StatelessWidget {
  final int? selectedShape;
  final Color? shapeColor;
  const HexagonView({Key? key, this.selectedShape, this.shapeColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HexagonViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                model.back();
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        body: Stack(
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height * 0.45,
                child: CustomPaint(
                  painter: RPSCustomPainter(),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 55,
                  ),
                  selectedShape == 0
                      ? CircleAvatar(
                          radius: 80,
                          backgroundColor: shapeColor,
                        )
                      : Container(
                          height: 120,
                          width: 120,
                          color: shapeColor,
                        )
                ],
              ),
            ),
            Positioned(
                right: 0.0,
                top: MediaQuery.of(context).size.height * 0.32,
                child: Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: CustomContainer(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 4,
                    containerColor: model.selected.contains('Patient')
                    ? Colors.black
                    : Colors.white,
                    text: "Patient",
                    borderColor: Colors.black,
                    textColor: model.selected.contains('Patient')
                    ? Colors.white
                    : Colors.black,
                    onTap: () {
                      model.selectChoice("Patient");
                    },
                  ),
                )),
            Positioned(
              right: MediaQuery.of(context).size.width / 2.7,
              top: MediaQuery.of(context).size.height * 0.18,
              child: CustomContainer(
                height: 60,
                width: MediaQuery.of(context).size.width / 4,
                containerColor: model.selected.contains('Focused')
                    ? Colors.black
                    : Colors.white,
                text: "Focused",
                borderColor: Colors.black,
                textColor: model.selected.contains('Focused')
                    ? Colors.white
                    : Colors.black,
                onTap: () {
                  model.selectChoice("Focused");
                },
              ),
            ),
            Positioned(
                left: 0.0,
                top: MediaQuery.of(context).size.height * 0.32,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: CustomContainer(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 4,
                    containerColor: model.selected.contains('Strong')
                        ? Colors.black
                        : Colors.white,
                    text: "Strong",
                    borderColor: Colors.black,
                    textColor: model.selected.contains('Strong')
                        ? Colors.white
                        : Colors.black,
                    onTap: () {
                      model.selectChoice("Strong");
                    },
                  ),
                )),
            Positioned(
                left: 0.0,
                bottom: MediaQuery.of(context).size.height * 0.22,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: CustomContainer(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 4,
                    containerColor: model.selected.contains('Competitive')
                        ? Colors.black
                        : Colors.white,
                    text: "Competitive",
                    borderColor: Colors.black,
                    textColor: model.selected.contains('Competitive')
                        ? Colors.white
                        : Colors.black,
                    onTap: () {
                      model.selectChoice("Competitive");
                    },
                  ),
                )),
            Positioned(
                right: 0.0,
                bottom: MediaQuery.of(context).size.height * 0.22,
                child: Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: CustomContainer(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 4,
                    containerColor: model.selected.contains('Enduring')
                        ? Colors.black
                      : Colors.white,
                    text: "Enduring",
                    borderColor: Colors.black,
                    textColor: model.selected.contains('Enduring')
                        ? Colors.white
                        : Colors.black,
                    onTap: () {
                      model.selectChoice("Enduring");
                    },
                  ),
                )),
            Positioned(
                right: MediaQuery.of(context).size.width / 2.7,
                bottom: MediaQuery.of(context).size.height * 0.11,
                child: CustomContainer(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 4,
                  containerColor: model.selected.contains('Centered Warrior')
                      ? Colors.black
                      : Colors.white,
                  text: "Centered Warrior",
                  borderColor: Colors.black,
                  textColor: model.selected.contains('Centered Warrior')
                      ? Colors.white
                      : Colors.black,
                  onTap: () {
                    model.selectChoice("Centered Warrior");
                  },
                )),
          ],
        ),
      ),
      viewModelBuilder: () => HexagonViewModel(),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color containerColor;
  final VoidCallback onTap;
  final String text;
  final Color textColor;
  final Color borderColor;
  const CustomContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.containerColor,
    required this.onTap,
    required this.text,
    required this.textColor,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: textColor),
          ),
        ),
        decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            color: containerColor,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
