// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom widgets

import 'index.dart'; // Imports other custom widgets

import 'map_widget.dart';

class MarkerPin extends StatefulWidget {
  PinModel data;
  String filterType;

  MarkerPin(this.data, this.filterType);

  @override
  State<MarkerPin> createState() => _MarkerPinState();
}

class _MarkerPinState extends State<MarkerPin> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.data.filterType == widget.filterType ||
          widget.filterType == "All",
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          width: 50,
          height: 60,
          child: Container(
            width: 50,
            height: 60,
            padding: const EdgeInsets.only(bottom: 20, right: 10, left: 6),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/pin.png"),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Image.asset(
                widget.data.img,
                width: 30,
                height: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
