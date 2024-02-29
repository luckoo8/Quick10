import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'account_bottom_sheet_model.dart';
export 'account_bottom_sheet_model.dart';

class AccountBottomSheetWidget extends StatefulWidget {
  const AccountBottomSheetWidget({super.key});

  @override
  State<AccountBottomSheetWidget> createState() =>
      _AccountBottomSheetWidgetState();
}

class _AccountBottomSheetWidgetState extends State<AccountBottomSheetWidget> {
  late AccountBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountBottomSheetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Container(
                        width: 50.0,
                        height: 4.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).lineColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.chevronLeft,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 18.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Back',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 4.0),
                      child: Text(
                        'Account',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 4.0),
                      child: Text(
                        'Done',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 30.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100.0),
                              child: Image.asset(
                                'assets/images/mj-pic.png',
                                width: 50.0,
                                height: 50.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Marie Jayne',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                Text(
                                  'marie.jayne@gmail.com',
                                  style: FlutterFlowTheme.of(context).bodySmall,
                                ),
                              ],
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.chevronRight,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 16.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 30.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 3.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Manage Subscription',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.chevronRight,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 16.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Notifications',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.chevronRight,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 16.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Reminders',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.chevronRight,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 16.0, 16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Help & Support',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            FaIcon(
                              FontAwesomeIcons.chevronRight,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Reset Data & History',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).alternate,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'Your learning history and course progress will be deleted from all your devices.',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Open Sans',
                            fontSize: 14.0,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 30.0, 16.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sign Out',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
