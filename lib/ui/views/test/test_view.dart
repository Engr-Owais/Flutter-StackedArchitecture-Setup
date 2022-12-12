import 'package:flutter/material.dart';
import 'package:staced_app_test/ui/views/test/test_viewModel.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/hexagon_widget.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TestViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
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
                top: MediaQuery.of(context).size.height * 0.39,
                child: Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )),
            Positioned(
                right: MediaQuery.of(context).size.width / 2.7,
                top: MediaQuery.of(context).size.height * 0.26,
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 4,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)),
                )),
            Positioned(
                left: 0.0,
                top: MediaQuery.of(context).size.height * 0.39,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )),
            Positioned(
                left: 0.0,
                bottom: MediaQuery.of(context).size.height * 0.28,
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )),
            Positioned(
                right: 0.0,
                bottom: MediaQuery.of(context).size.height * 0.28,
                child: Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )),
            Positioned(
                right: MediaQuery.of(context).size.width / 2.7,
                bottom: MediaQuery.of(context).size.height * 0.18,
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 4,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20)),
                )),
          ],
        ),
      ),
      viewModelBuilder: () => TestViewModel(),
    );
  }
}
