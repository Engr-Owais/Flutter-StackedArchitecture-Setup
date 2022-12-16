import 'package:flutter/material.dart';
import 'package:staced_app_test/ui/views/hexagon/hexagon_viewModel.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/hexagon_widget.dart';

class HexagonView extends StatelessWidget {
  const HexagonView({Key? key}) : super(key: key);

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
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.red,
                  ),
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
                    containerColor: Colors.black,
                    text: "Patient",
                    borderColor: Colors.black,
                    textColor: Colors.white,
                    onTap: () {},
                  ),
                )),
            Positioned(
              right: MediaQuery.of(context).size.width / 2.7,
              top: MediaQuery.of(context).size.height * 0.18,
              child: CustomContainer(
                height: 60,
                width: MediaQuery.of(context).size.width / 4,
                containerColor: Colors.black,
                text: "Focused",
                borderColor: Colors.black,
                textColor: Colors.white,
                onTap: () {},
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
                    containerColor: Colors.black,
                    text: "Strong",
                    borderColor: Colors.black,
                    textColor: Colors.white,
                    onTap: () {},
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
                    containerColor: Colors.black,
                    text: "Competitive",
                    borderColor: Colors.black,
                    textColor: Colors.white,
                    onTap: () {},
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
                    containerColor: Colors.white,
                    text: "Enduring",
                    borderColor: Colors.black,
                    textColor: Colors.black,
                    onTap: () {},
                  ),
                )),
            Positioned(
                right: MediaQuery.of(context).size.width / 2.7,
                bottom: MediaQuery.of(context).size.height * 0.11,
                child: CustomContainer(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 4,
                  containerColor: Colors.black,
                  text: "Centered Warrior",
                  borderColor: Colors.black,
                  textColor: Colors.white,
                  onTap: () {},
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
