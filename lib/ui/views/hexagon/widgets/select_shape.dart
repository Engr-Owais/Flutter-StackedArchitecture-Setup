import 'package:flutter/material.dart';
import 'package:staced_app_test/ui/views/hexagon/hexagon_viewModel.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class SelectShapeView extends StatelessWidget {
  const SelectShapeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HexagonViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text("Select Shape"),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 200,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(2, (index) {
                        if (index == 0) {
                          return GestureDetector(
                            onTap: () {
                              model.selectShape(index);
                              print(model.selectedItem);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                  backgroundColor: index == model.selectedItem
                                      ? Colors.red
                                      : Colors.blue,
                                  radius: 60,
                                  child: index == model.selectedItem
                                      ? Center(
                                          child: Icon(
                                            Icons.check_circle,
                                            color: Colors.black,
                                          ),
                                        )
                                      : null),
                            ),
                          );
                        } else {
                          return GestureDetector(
                            onTap: () {
                              model.selectShape(index);
                              print(model.selectedItem);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  height: 120,
                                  width: 120,
                                  color: index == model.selectedItem
                                      ? Colors.red
                                      : Colors.blue,
                                  child: index == model.selectedItem
                                      ? Center(
                                          child: Icon(
                                            Icons.check_circle,
                                            color: Colors.black,
                                          ),
                                        )
                                      : null),
                            ),
                          );
                        }
                      }))),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Pick a color!'),
                          content: SingleChildScrollView(
                            child: ColorPicker(
                              pickerColor: model.color,
                              onColorChanged: (value) =>
                                  model.changeColor(value),
                            ),
                          ),
                          actions: <Widget>[
                            ElevatedButton(
                              child: const Text('Got it'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("CHANGE COLOR")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    model.navigateToHexagon();
                  },
                  child: Text("Done")),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => HexagonViewModel(),
    );
  }
}
