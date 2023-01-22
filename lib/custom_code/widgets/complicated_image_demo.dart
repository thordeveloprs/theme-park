// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '../../backend/schema/amusementpark_record.dart';
import '../../components/ride_card_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ComplicatedImageDemo extends StatefulWidget {
  const ComplicatedImageDemo({
    Key? key,
    this.width,
    this.height,
    this.listData,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<AmusementparkRecord>? listData;

  @override
  _ComplicatedImageDemoState createState() => _ComplicatedImageDemoState();
}

class _ComplicatedImageDemoState extends State<ComplicatedImageDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
          itemCount: widget.listData!.length,
          options: CarouselOptions(
            enableInfiniteScroll: false,
            autoPlay: false,
            height: MediaQuery.of(context).size.height * 0.45,
            aspectRatio: 2.0,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            enlargeCenterPage: true,
          ),
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) {
            AmusementparkRecord data = widget.listData![itemIndex];
            return RideCardWidget(
              data: data,
              key: widget.key,
            );
          }),
    );
  }
}
