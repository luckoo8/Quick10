import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            title: Column(
              mainAxisSize: MainAxisSize.min,
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 8.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            Icons.settings,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 28.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
          ),
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset(
                        'assets/images/mj-pic.png',
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'Marie Jayne',
                      style: FlutterFlowTheme.of(context).headlineMedium,
                    ),
                    Text(
                      'marie.jayne@gmail.com',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Edit Profile',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                          elevation: 2.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.work_outline,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 18.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Flutterflow Expert',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 18.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Kentucky, Texas',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.translate,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 18.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'English, Spanish',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Hello, I\'m Marie. I recently found no code to be the future of creating new products and solution. Lets get a cup of coffee and talk about our next no-code project.',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Certificates',
                            style: FlutterFlowTheme.of(context).headlineMedium,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 2.0, 0.0),
                                child: Text(
                                  'See All',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                ),
                              ),
                              FaIcon(
                                FontAwesomeIcons.chevronRight,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 16.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 6.0, 0.0),
                              child: Container(
                                width: 280.0,
                                height: 180.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.network(
                                      '',
                                    ).image,
                                  ),
                                  gradient: LinearGradient(
                                    colors: [
                                      FlutterFlowTheme.of(context).primary,
                                      FlutterFlowTheme.of(context).secondary
                                    ],
                                    stops: [0.0, 1.0],
                                    begin: AlignmentDirectional(0.0, -1.0),
                                    end: AlignmentDirectional(0, 1.0),
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.certificate,
                                            color: Colors.white,
                                            size: 25.0,
                                          ),
                                          Text(
                                            'No Code Tools And Development',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Image.asset(
                                              'assets/images/kindpng_4559923.png',
                                              width: 80.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  6.0, 0.0, 6.0, 0.0),
                              child: Container(
                                width: 280.0,
                                height: 180.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.network(
                                      '',
                                    ).image,
                                  ),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF009EB8),
                                      Color(0xFFC57589)
                                    ],
                                    stops: [0.0, 1.0],
                                    begin: AlignmentDirectional(0.0, -1.0),
                                    end: AlignmentDirectional(0, 1.0),
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.certificate,
                                            color: Colors.white,
                                            size: 25.0,
                                          ),
                                          Text(
                                            'Database & Data Structures',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Image.asset(
                                              'assets/images/kindpng_4559923.png',
                                              width: 80.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  6.0, 0.0, 16.0, 0.0),
                              child: Container(
                                width: 280.0,
                                height: 180.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.network(
                                      '',
                                    ).image,
                                  ),
                                  gradient: LinearGradient(
                                    colors: [
                                      FlutterFlowTheme.of(context).alternate,
                                      FlutterFlowTheme.of(context).tertiary
                                    ],
                                    stops: [0.0, 1.0],
                                    begin: AlignmentDirectional(0.0, -1.0),
                                    end: AlignmentDirectional(0, 1.0),
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.certificate,
                                            color: Colors.white,
                                            size: 25.0,
                                          ),
                                          Text(
                                            'AIrtificial Inteligence & Machine Learning',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Image.asset(
                                              'assets/images/kindpng_4559923.png',
                                              width: 80.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
