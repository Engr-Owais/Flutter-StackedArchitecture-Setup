import 'package:flutter/material.dart';
import 'package:staced_app_test/ui/views/test/test_viewModel.dart';
import 'package:stacked/stacked.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TestViewModel>.reactive(
      builder: (context, model, child) => const Scaffold(),
      viewModelBuilder: () => TestViewModel(),
    );
  }
}
