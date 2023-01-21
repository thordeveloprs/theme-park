// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cached_network_image/cached_network_image.dart';

import '../../components/map_popup_widget.dart';
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
        onTap: () {
          showBottomSheet(
              context: context,
              builder: (context) {
                return MapPopupWidget(
                  dataReff: FirebaseFirestore.instance
                      .collection("amusementpark")
                      .doc(widget.data.id),
                );
              });
        },
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 60,
          child: Container(
            height: 60,
            padding: const EdgeInsets.only(bottom: 20, right: 10, left: 6),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/pin.png"),
                fit: BoxFit.fitHeight,
              ),
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: CachedNetworkImage(
                imageUrl: widget.data.img,
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
