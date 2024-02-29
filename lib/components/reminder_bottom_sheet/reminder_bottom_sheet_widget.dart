import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reminder_bottom_sheet_model.dart';
export 'reminder_bottom_sheet_model.dart';

class ReminderBottomSheetWidget extends StatefulWidget {
  const ReminderBottomSheetWidget({super.key});

  @override
  State<ReminderBottomSheetWidget> createState() =>
      _ReminderBottomSheetWidgetState();
}

class _ReminderBottomSheetWidgetState extends State<ReminderBottomSheetWidget> {
  late ReminderBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReminderBottomSheetModel());

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
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        'Cancel',
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
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FaIcon(
                  FontAwesomeIcons.solidClock,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 60.0,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'Set A Reminder Goal',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Poppins',
                          fontSize: 28.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30.0, 4.0, 30.0, 0.0),
                  child: Text(
                    'Setting a reminder is a great way to create daily habits. It is proven that people who sets a reminder will complete more than 90% of the courses.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Open Sans',
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 200.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: FlutterFlowCountController(
                          decrementIconBuilder: (enabled) => FaIcon(
                            FontAwesomeIcons.minusCircle,
                            color: enabled
                                ? FlutterFlowTheme.of(context).primary
                                : Color(0xFFEEEEEE),
                            size: 30.0,
                          ),
                          incrementIconBuilder: (enabled) => FaIcon(
                            FontAwesomeIcons.plusCircle,
                            color: enabled
                                ? FlutterFlowTheme.of(context).primary
                                : Color(0xFFEEEEEE),
                            size: 30.0,
                          ),
                          countBuilder: (count) => Text(
                            count.toString(),
                            style: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          count: _model.countControllerValue ??= 5,
                          updateCount: (count) => setState(
                              () => _model.countControllerValue = count),
                          stepSize: 1,
                        ),
                      ),
                      Text(
                        'Hours',
                        style: FlutterFlowTheme.of(context).headlineMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 16.0),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Set Reminder',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 60.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
