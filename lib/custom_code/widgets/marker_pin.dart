// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class MarkerPin extends StatefulWidget {
  PinModel data;
  String filterType;

  MarkerPin(this.data, this.filterType, {super.key});

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
          width: 60,
          height: 70,
          child: Container(
            width: 70,
            height: 70,
            padding: const EdgeInsets.only(bottom: 20, right: 10, left: 6),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("image/pin.png"),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            ),
            child: Icon(
              widget.data.img,
              size: 40,
              color: widget.data.colors,
            ),
          ),
        ),
      ),
    );
  }
}
