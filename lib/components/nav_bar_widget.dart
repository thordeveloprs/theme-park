import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0, 0.95),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
        child: Container(
          width: double.infinity,
          height: 95,
          decoration: BoxDecoration(
            color: Color(0x00FFFFFF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 75,
                      decoration: BoxDecoration(
                        color: Color(0xFF3E2D26),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Color(0x1A57636C),
                            offset: Offset(0, -10),
                            spreadRadius: 0.1,
                          )
                        ],
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFF3E2D26),
                        shape: BoxShape.circle,
                      ),
                      child: FaIcon(
                        FontAwesomeIcons.spotify,
                        color: FlutterFlowTheme.of(context).whiteToWhite,
                        size: 40,
                      ),
                    ),
                  ),
                  Container(
                    width: 55,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color(0xFF3E2D26),
                    ),
                    child: Icon(
                      Icons.search_rounded,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 40,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 5,
                        shape: const CircleBorder(),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFF45302B),
                              width: 5,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, 0.1),
                            child: FaIcon(
                              FontAwesomeIcons.mapMarkerAlt,
                              color: Color(0xFF3E2D26),
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 68,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color(0xFF3E2D26),
                    ),
                    child: Icon(
                      Icons.notifications,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 40,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                    child: Container(
                      width: 30,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color(0xFF3E2D26),
                      ),
                      child: Icon(
                        Icons.sports_bar_sharp,
                        color: FlutterFlowTheme.of(context).whiteToWhite,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
