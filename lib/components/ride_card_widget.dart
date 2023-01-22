import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RideCardWidget extends StatefulWidget {
  const RideCardWidget({
    Key? key,
    this.data,
  }) : super(key: key);

  final AmusementparkRecord? data;

  @override
  _RideCardWidgetState createState() => _RideCardWidgetState();
}

class _RideCardWidgetState extends State<RideCardWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<AmusementparkRecord>>(
      stream: queryAmusementparkRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<AmusementparkRecord> containerAmusementparkRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final containerAmusementparkRecord =
            containerAmusementparkRecordList.isNotEmpty
                ? containerAmusementparkRecordList.first
                : null;
        return Container(
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.height * 0.9,
          decoration: BoxDecoration(
            color: Color(0x00FFFFFF),
          ),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-1, -1),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.55,
                  height: 460,
                  decoration: BoxDecoration(
                    color: Color(0x00FEF8F3),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Color(0xFFEE8B60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, -1),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 220,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEE8B60),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 15, 15, 15),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 20),
                                            child: Text(
                                              widget.data!.title!,
                                              maxLines: 1,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Lato',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .blkToWyt,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 35),
                                            child: Text(
                                              widget.data!.shortDetails!,
                                              textAlign: TextAlign.start,
                                              maxLines: 4,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .blkToWyt,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1, -0.75),
                child: Container(
                  width: 130,
                  height: 130,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    widget.data!.img!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.85, -0.9),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF73A88D),
                    shape: BoxShape.circle,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (containerAmusementparkRecord!.isFavourite == true)
                        InkWell(
                          onTap: () async {
                            final amusementparkUpdateData =
                                createAmusementparkRecordData(
                              isFavourite: false,
                            );
                            await containerAmusementparkRecord!.reference
                                .update(amusementparkUpdateData);
                          },
                          child: Icon(
                            Icons.favorite,
                            color: Color(0xFFFF0000),
                            size: 20,
                          ),
                        ),
                      if (containerAmusementparkRecord!.isFavourite == false)
                        InkWell(
                          onTap: () async {
                            final amusementparkUpdateData =
                                createAmusementparkRecordData(
                              isFavourite: true,
                            );
                            await containerAmusementparkRecord!.reference
                                .update(amusementparkUpdateData);
                          },
                          child: Icon(
                            Icons.favorite,
                            color: FlutterFlowTheme.of(context).whiteToWhite,
                            size: 20,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
