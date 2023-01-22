import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
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
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (Theme.of(context).brightness == Brightness.light)
              Expanded(
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.65,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF699DF4), Color(0xFF87B1FE)],
                            stops: [0, 1],
                            begin: AlignmentDirectional(0, -1),
                            end: AlignmentDirectional(0, 1),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.65),
                      child: Container(
                        width: 500,
                        height: 500,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.29),
                      child: Image.asset(
                        'assets/images/giphy_(1).gif',
                        width: 300,
                        height: 320,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.97, 0.24),
                      child: Image.asset(
                        'assets/images/ridesss_copy.png',
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 550, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome!',
                              textAlign: TextAlign.center,
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Libre Franklin',
                                        color: Colors.white,
                                        fontSize: 50,
                                      ),
                            ),
                            Text(
                              'Discover the amazing world of\nfun and childhood',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('map_view');
                                },
                                text: 'Get Started',
                                options: FFButtonOptions(
                                  width: 325,
                                  height: 60,
                                  color: Color(0xFFFE6370),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.96, 0.61),
                      child: SvgPicture.asset(
                        'assets/images/639cc9bfbcb1915406c8e470_floating-yellow-fish.svg',
                        width: 55,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.05, 0.87),
                      child: SvgPicture.asset(
                        'assets/images/639cc911e553bfe33b7cadee_floating-candy-bubbles.svg',
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.98, -0.74),
                      child: Image.asset(
                        'assets/images/ballon.png',
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.66, 1.14),
                      child: SvgPicture.asset(
                        'assets/images/639cc911e553bfe33b7cadee_floating-candy-bubbles.svg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.59, 0.99),
                      child: Image.asset(
                        'assets/images/starfishh.png',
                        width: 55,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Image.asset(
                      'assets/images/png-transparent-starry-sky-during-nighttime-atmosphere-sky-space-astronomy-night-space-pic-miscellaneous-texture-food-thumbnail.png',
                      width: double.infinity,
                      height: 1,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.9),
                      child: Image.asset(
                        'assets/images/logo_them_park_(3).png',
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            if (Theme.of(context).brightness == Brightness.dark)
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.65,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF699DF4), Color(0xFF87B1FE)],
                            stops: [0, 1],
                            begin: AlignmentDirectional(0, -1),
                            end: AlignmentDirectional(0, 1),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.65),
                      child: Container(
                        width: 500,
                        height: 500,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/images/pngwing.com_(1).png',
                      width: double.infinity,
                      height: 450,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.29),
                      child: Image.asset(
                        'assets/images/giphy_(1).gif',
                        width: 300,
                        height: 320,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.97, 0.24),
                      child: Image.asset(
                        'assets/images/ridesss_copy.png',
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 550, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome!',
                              textAlign: TextAlign.center,
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Libre Franklin',
                                        color: Colors.black,
                                        fontSize: 50,
                                      ),
                            ),
                            Text(
                              'Discover the amazing world of\nfun and childhood',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.goNamed('map_view');
                                },
                                text: 'Get Started',
                                options: FFButtonOptions(
                                  width: 325,
                                  height: 60,
                                  color: Color(0xFFFC6370),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.96, 0.61),
                      child: SvgPicture.asset(
                        'assets/images/639cc9bfbcb1915406c8e470_floating-yellow-fish.svg',
                        width: 55,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1.05, 0.87),
                      child: SvgPicture.asset(
                        'assets/images/639cc911e553bfe33b7cadee_floating-candy-bubbles.svg',
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.34, 1.04),
                      child: SvgPicture.asset(
                        'assets/images/639cc911e553bfe33b7cadee_floating-candy-bubbles.svg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.59, 0.99),
                      child: Image.asset(
                        'assets/images/starfishh.png',
                        width: 55,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.98, -0.74),
                      child: Image.asset(
                        'assets/images/ballon.png',
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.93),
                      child: Image.asset(
                        'assets/images/logo_them_park_(3).png',
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
