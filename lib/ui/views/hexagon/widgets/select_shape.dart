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
                              print(model.selected);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black, width: 3.0),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(8, 4.0),
                                        blurRadius: 5,
                                        color: Colors.black,
                                        spreadRadius: 0)
                                  ],
                                ),
                                child: CircleAvatar(
                                    backgroundColor:
                                        Colors.amberAccent.shade100,
                                    radius: 60,
                                    child: index == model.selectedShape
                                        ? Center(
                                            child: Icon(
                                              Icons.check_circle,
                                              color: Colors.black,
                                            ),
                                          )
                                        : null),
                              ),
                            ),
                          );
                        } else {
                          return GestureDetector(
                            onTap: () {
                              model.selectShape(index);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amberAccent.shade100,
                                    border: Border.all(
                                        color: Colors.black, width: 3.0),
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(8, 4.0),
                                          blurRadius: 5,
                                          color: Colors.black,
                                          spreadRadius: 0)
                                    ],
                                  ),
                                  height: 120,
                                  width: 120,
                                  child: index == model.selectedShape
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          model.back();
                        },
                        child: Text("DONE")),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => HexagonViewModel(),
    );
  }
}
