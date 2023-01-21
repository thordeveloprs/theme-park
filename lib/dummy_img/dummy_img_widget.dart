import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DummyImgWidget extends StatefulWidget {
  const DummyImgWidget({Key? key}) : super(key: key);

  @override
  _DummyImgWidgetState createState() => _DummyImgWidgetState();
}

class _DummyImgWidgetState extends State<DummyImgWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                'assets/images/show_2.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/food.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/ride_3.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/pin.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              CachedNetworkImage(
                imageUrl:
                    'https://cdn.pixabay.com/photo/2016/10/26/19/00/domain-names-1772243_960_720.jpg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/all.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/pin.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
