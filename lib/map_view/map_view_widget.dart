import '../components/navv_bar_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MapViewWidget extends StatefulWidget {
  const MapViewWidget({Key? key}) : super(key: key);

  @override
  _MapViewWidgetState createState() => _MapViewWidgetState();
}

class _MapViewWidgetState extends State<MapViewWidget> {
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).whiteToWhite,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.85,
                  child: custom_widgets.MapWidget(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.85,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: NavvBarWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
