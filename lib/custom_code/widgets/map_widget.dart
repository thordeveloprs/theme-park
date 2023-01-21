// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom widgets

import 'dart:async';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'marker_pin.dart';

class MapWidget extends StatefulWidget {
  final double width, height;

  MapWidget({required this.width, required this.height});

  @override
  State<MapWidget> createState() => _MapViewWidget();
}

class _MapViewWidget extends State<MapWidget> {
  List<PinModel> listPin = [];
  String filterType = "All";
  bool upDown = false;
  Timer? _timer;
  int timeStart = 1;
  double animationValue = 0;
  int animationTimeInMilliSeconds = 800;
  PanelController panelController = PanelController();

  @override
  void initState() {
    listPin.add(
        PinModel("Pin 0", 0, "Ride", Icons.attractions_outlined, Colors.red));
    listPin.add(
        PinModel("Pin 1", 1, "Ride", Icons.attractions_outlined, Colors.red));
    listPin.add(
        PinModel("Pin 2", 2, "Ride", Icons.attractions_outlined, Colors.red));
    listPin.add(
        PinModel("Pin 3", 3, "Ride", Icons.attractions_outlined, Colors.red));
    listPin.add(PinModel(
        "Pin 4", 4, "Food", Icons.lunch_dining_outlined, Colors.green));
    listPin.add(PinModel(
        "Pin 5", 5, "Food", Icons.lunch_dining_outlined, Colors.green));
    listPin.add(PinModel(
        "Pin 6", 6, "Food", Icons.lunch_dining_outlined, Colors.green));
    listPin.add(PinModel(
        "Pin 7", 7, "Show", Icons.movie_creation_outlined, Colors.blue));
    listPin.add(PinModel(
        "Pin 8", 8, "Show", Icons.movie_creation_outlined, Colors.blue));

    listPin.add(PinModel(
        "Pin 9", 9, "Show", Icons.movie_creation_outlined, Colors.blue));

    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          if (panelController.isAttached) {
            if (panelController.isPanelOpen) {
              panelController.close();
            }
          }
        },
        child: SizedBox(
          width: widget.width,
          height: widget.height,
          child: InteractiveViewer(
            minScale: 1,
            maxScale: 2,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amusement-twoj3y/assets/dklrdrhu46pf/map.jpg",
                  fit: BoxFit.cover,
                ),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    top: MediaQuery.of(context).size.height * 0.30 +
                        animationValue,
                    right: MediaQuery.of(context).size.width * 0.30,
                    child: MarkerPin(listPin[0], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    bottom: MediaQuery.of(context).size.height * 0.40 +
                        animationValue,
                    left: MediaQuery.of(context).size.width * 0.15,
                    child: MarkerPin(listPin[1], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    top: MediaQuery.of(context).size.height * 0.05 +
                        animationValue,
                    right: MediaQuery.of(context).size.width * 0.30,
                    child: MarkerPin(listPin[2], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    left: MediaQuery.of(context).size.width * .35,
                    bottom: MediaQuery.of(context).size.height * .47 +
                        animationValue,
                    child: MarkerPin(listPin[3], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    left: MediaQuery.of(context).size.width * .27,
                    top: MediaQuery.of(context).size.height * .25 +
                        animationValue,
                    child: MarkerPin(listPin[4], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    right: MediaQuery.of(context).size.width * .05,
                    bottom: MediaQuery.of(context).size.height * .35 +
                        animationValue,
                    child: MarkerPin(listPin[5], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    left: MediaQuery.of(context).size.width * .41,
                    bottom: MediaQuery.of(context).size.height * .36 +
                        animationValue,
                    child: MarkerPin(listPin[6], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    left: MediaQuery.of(context).size.width * .45,
                    top: MediaQuery.of(context).size.height * .10 +
                        animationValue,
                    child: MarkerPin(listPin[7], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    left: MediaQuery.of(context).size.width * .55,
                    bottom: MediaQuery.of(context).size.height * .35 +
                        animationValue,
                    child: MarkerPin(listPin[8], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    right: MediaQuery.of(context).size.width * .02,
                    top: MediaQuery.of(context).size.height * .01 +
                        animationValue,
                    child: MarkerPin(listPin[9], filterType)),
                Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: SlidingUpPanel(
                        controller: panelController,
                        minHeight: MediaQuery.of(context).size.height * .02,
                        maxHeight: MediaQuery.of(context).size.height * .29,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3.0,
                          ),
                        ],
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(18.0),
                            topRight: Radius.circular(18.0)),
                        panel: Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Column(
                            children: [
                              const Icon(
                                Icons.maximize_outlined,
                                color: Colors.pink,
                                size: 50,
                              ),
                              const Text(
                                "Filter by categories",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 10),
                                child: Wrap(
                                  children: [
                                    slidingUpPanelWidget(
                                        "All",
                                        Icons.group_work_outlined,
                                        Colors.purple,
                                        Colors.white),
                                    slidingUpPanelWidget(
                                        "Ride",
                                        Icons.attractions_outlined,
                                        Colors.red,
                                        Colors.white),
                                    slidingUpPanelWidget(
                                        "Show",
                                        Icons.movie_creation_outlined,
                                        Colors.blue,
                                        Colors.white),
                                    slidingUpPanelWidget(
                                        "Food",
                                        Icons.lunch_dining_outlined,
                                        Colors.green,
                                        Colors.white),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  void startTimer() {
    Timer.periodic(Duration(milliseconds: animationTimeInMilliSeconds),
        (timer) {
      setState(() {
        if (animationValue == 0) {
          animationValue = 10;
        } else {
          animationValue = 0;
        }
      });
    });
  }

  Widget slidingUpPanelWidget(
      String title, IconData icon, Color backColor, Color iconColor) {
    bool isSelected = false;
    if (title == filterType) {
      isSelected = true;
    }

    return InkWell(
      onTap: () {
        setState(() {
          filterType = title;
        });
        panelController.close();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: backColor,
          border: Border.all(color: Colors.pink, width: isSelected ? 3 : 0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: isSelected ? 10.0 : 0,
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Icon(
                icon,
                color: iconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PinModel {
  String title;
  int id;
  String filterType;
  IconData img;
  MaterialColor colors;

  PinModel(this.title, this.id, this.filterType, this.img, this.colors);
}
