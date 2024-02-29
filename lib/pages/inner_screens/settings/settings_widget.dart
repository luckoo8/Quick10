import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'settings_model.dart';
export 'settings_model.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  late SettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(116.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: Text(
                            'Done',
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
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Settings',
                      style: FlutterFlowTheme.of(context).displaySmall,
                    ),
                  ),
                ],
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 12.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              icon: FaIcon(
                                FontAwesomeIcons.wifi,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                          Expanded(
                            child: SwitchListTile.adaptive(
                              value: _model.switchListTileValue1 ??= true,
                              onChanged: (newValue) async {
                                setState(() =>
                                    _model.switchListTileValue1 = newValue!);
                              },
                              title: Text(
                                'Play Over WiFi',
                                style: FlutterFlowTheme.of(context).titleMedium,
                              ),
                              subtitle: Text(
                                'Videos and audios will only play on WiFi',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                              ),
                              activeColor: FlutterFlowTheme.of(context).primary,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 12.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            icon: FaIcon(
                              FontAwesomeIcons.bell,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          Expanded(
                            child: SwitchListTile.adaptive(
                              value: _model.switchListTileValue2 ??= true,
                              onChanged: (newValue) async {
                                setState(() =>
                                    _model.switchListTileValue2 = newValue!);
                              },
                              title: Text(
                                'Notifications',
                                style: FlutterFlowTheme.of(context).titleMedium,
                              ),
                              activeColor: FlutterFlowTheme.of(context).primary,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 12.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              icon: FaIcon(
                                FontAwesomeIcons.arrowDown,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                          Expanded(
                            child: SwitchListTile.adaptive(
                              value: _model.switchListTileValue3 ??= false,
                              onChanged: (newValue) async {
                                setState(() =>
                                    _model.switchListTileValue3 = newValue!);
                              },
                              title: Text(
                                'Offline Download',
                                style: FlutterFlowTheme.of(context).titleMedium,
                              ),
                              subtitle: Text(
                                'Download and play content when you\'re offline',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                              ),
                              activeColor: FlutterFlowTheme.of(context).primary,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 12.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              icon: FaIcon(
                                FontAwesomeIcons.clock,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                          Expanded(
                            child: SwitchListTile.adaptive(
                              value: _model.switchListTileValue4 ??= false,
                              onChanged: (newValue) async {
                                setState(() =>
                                    _model.switchListTileValue4 = newValue!);
                              },
                              title: Text(
                                'Reminders',
                                style: FlutterFlowTheme.of(context).titleMedium,
                              ),
                              subtitle: Text(
                                'We\'ll remind you to continue you\'re ongoing lessons',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                              ),
                              activeColor: FlutterFlowTheme.of(context).primary,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 12.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              icon: FaIcon(
                                FontAwesomeIcons.batteryThreeQuarters,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                              onPressed: () {
                                print('IconButton pressed ...');
                              },
                            ),
                          ),
                          Expanded(
                            child: SwitchListTile.adaptive(
                              value: _model.switchListTileValue5 ??= true,
                              onChanged: (newValue) async {
                                setState(() =>
                                    _model.switchListTileValue5 = newValue!);
                              },
                              title: Text(
                                'Battery Saver',
                                style: FlutterFlowTheme.of(context).titleMedium,
                              ),
                              subtitle: Text(
                                'Background activities will stop working when turned on',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                              ),
                              activeColor: FlutterFlowTheme.of(context).primary,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
