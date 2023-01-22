// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom widgets

import 'package:cached_network_image/cached_network_image.dart';

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
  String all =
      "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amusement-twoj3y/assets/8ui5t6b4qtqs/all.png";
  String rideIcon =
      "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amusement-twoj3y/assets/eyb4mh8cp0ed/ride_3.png";
  String foodIcon =
      "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amusement-twoj3y/assets/2dfdoxeu1un1/food.png";
  String showIcon =
      "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amusement-twoj3y/assets/6rmqspifhlml/show_2.png";

  @override
  void initState() {
    listPin.add(PinModel(
        "Pin 0", "YcUE5DCvygSXNgG95QWe", "Ride", rideIcon, panelController));
    listPin.add(PinModel(
        "Pin 1", "YcUE5DCvygSXNgG95QWe", "Ride", rideIcon, panelController));
    listPin.add(PinModel(
        "Pin 2", "YcUE5DCvygSXNgG95QWe", "Ride", rideIcon, panelController));
    listPin.add(PinModel(
        "Pin 3", "YcUE5DCvygSXNgG95QWe", "Ride", rideIcon, panelController));
    listPin.add(PinModel(
        "Pin 4", "YcUE5DCvygSXNgG95QWe", "Ride", rideIcon, panelController));
    listPin.add(PinModel(
        "Pin 5", "YcUE5DCvygSXNgG95QWe", "Ride", rideIcon, panelController));
    listPin.add(PinModel(
        "Pin 6", "YcUE5DCvygSXNgG95QWe", "Food", foodIcon, panelController));
    listPin.add(PinModel(
        "Pin 7", "YcUE5DCvygSXNgG95QWe", "Food", foodIcon, panelController));
    listPin.add(PinModel(
        "Pin 8", "YcUE5DCvygSXNgG95QWe", "Food", foodIcon, panelController));
    listPin.add(PinModel(
        "Pin 9", "YcUE5DCvygSXNgG95QWe", "Show", showIcon, panelController));
    listPin.add(PinModel(
        "Pin 10", "YcUE5DCvygSXNgG95QWe", "Show", showIcon, panelController));
    listPin.add(PinModel(
        "Pin 11", "YcUE5DCvygSXNgG95QWe", "Show", showIcon, panelController));
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
                CachedNetworkImage(
                  imageUrl:
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amusement-twoj3y/assets/dklrdrhu46pf/map.jpg',
                  fit: BoxFit.cover,
                ),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    bottom: MediaQuery.of(context).size.height * 0.40 +
                        animationValue,
                    right: MediaQuery.of(context).size.width * 0.25,
                    child: MarkerPin(listPin[0], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    bottom: MediaQuery.of(context).size.height * 0.47 +
                        animationValue,
                    right: MediaQuery.of(context).size.width * 0.10,
                    child: MarkerPin(listPin[1], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    top: MediaQuery.of(context).size.height * 0.10 +
                        animationValue,
                    left: MediaQuery.of(context).size.width * 0.15,
                    child: MarkerPin(listPin[2], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    left: MediaQuery.of(context).size.width * .10,
                    bottom: MediaQuery.of(context).size.height * .47 +
                        animationValue,
                    child: MarkerPin(listPin[3], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    right: MediaQuery.of(context).size.width * .15,
                    top: MediaQuery.of(context).size.height * .25 +
                        animationValue,
                    child: MarkerPin(listPin[4], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    right: MediaQuery.of(context).size.width * .03,
                    bottom: MediaQuery.of(context).size.height * .35 +
                        animationValue,
                    child: MarkerPin(listPin[5], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    left: MediaQuery.of(context).size.width * .40,
                    bottom: MediaQuery.of(context).size.height * .36 +
                        animationValue,
                    child: MarkerPin(listPin[6], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    left: MediaQuery.of(context).size.width * .40,
                    top: MediaQuery.of(context).size.height * .01 +
                        animationValue,
                    child: MarkerPin(listPin[7], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    left: MediaQuery.of(context).size.width * .10,
                    top: MediaQuery.of(context).size.height * .47 +
                        animationValue,
                    child: MarkerPin(listPin[8], filterType)),
                AnimatedPositioned(
                    duration: Duration(
                      milliseconds: animationTimeInMilliSeconds,
                    ),
                    right: MediaQuery.of(context).size.width * .01,
                    top: MediaQuery.of(context).size.height * .12 +
                        animationValue,
                    child: MarkerPin(listPin[9], filterType)),
                Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: SlidingUpPanel(
                        controller: panelController,
                        minHeight: MediaQuery.of(context).size.height * .02,
                        maxHeight: MediaQuery.of(context).size.height * .30,
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
                          color: FlutterFlowTheme.of(context).primaryBackground,
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
                                      all,
                                      FlutterFlowTheme.of(context).primaryColor,
                                    ),
                                    slidingUpPanelWidget(
                                      "Ride",
                                      rideIcon,
                                      FlutterFlowTheme.of(context).primaryColor,
                                    ),
                                    slidingUpPanelWidget(
                                      "Show",
                                      showIcon,
                                      FlutterFlowTheme.of(context).primaryColor,
                                    ),
                                    slidingUpPanelWidget(
                                      "Food",
                                      foodIcon,
                                      FlutterFlowTheme.of(context).primaryColor,
                                    ),
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

  Widget slidingUpPanelWidget(String title, String img, Color backColor) {
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
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: FlutterFlowTheme.of(context).secondaryBackground,
          border: Border.all(
              color: isSelected
                  ? FlutterFlowTheme.of(context).primaryColor
                  : Colors.white,
              width: 3),
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
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: CachedNetworkImage(
                imageUrl: img,
                width: 25,
                height: 25,
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
  String id;
  String filterType;
  String img;

  PinModel(this.title, this.id, this.filterType, this.img);
}
