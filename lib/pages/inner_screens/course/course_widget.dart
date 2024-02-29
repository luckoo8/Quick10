import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'course_model.dart';
export 'course_model.dart';

class CourseWidget extends StatefulWidget {
  const CourseWidget({super.key});

  @override
  State<CourseWidget> createState() => _CourseWidgetState();
}

class _CourseWidgetState extends State<CourseWidget> {
  late CourseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CourseModel());

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
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 500.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/course-img-3.png',
                          ).image,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Text(
                              'No Code Builder',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: Text(
                              'Airtable을 활용한 자동화',
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    lineHeight: 1.2,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 16.0, 16.0),
                            child: Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 88.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x80000000),
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Beginner',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.white,
                                                ),
                                          ),
                                          Text(
                                            '20 Chapters',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFD2D2D2),
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 16.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: '시작하기',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Colors.white,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                          elevation: 2.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
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
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 8.0),
                            child: Text(
                              'Overview',
                              style:
                                  FlutterFlowTheme.of(context).headlineMedium,
                            ),
                          ),
                          Text(
                            '에어테이블은 엑셀과 유사하지만, 훨씬 다양한 기능을 포함한 데이터베이스에 가깝습니다. ',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: Image.network(
                              'https://i.pravatar.cc/150?img=60',
                              width: 50.0,
                              height: 50.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'James Brooke',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium,
                                  ),
                                  Text(
                                    'Author',
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            icon: FaIcon(
                              FontAwesomeIcons.chevronRight,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 8.0),
                            child: Text(
                              'What\'s Included',
                              style:
                                  FlutterFlowTheme.of(context).headlineMedium,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 16.0,
                                  borderWidth: 1.0,
                                  buttonSize: 60.0,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  icon: FaIcon(
                                    FontAwesomeIcons.book,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '28 Chapters',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium,
                                        ),
                                        Text(
                                          'Comple audio & video lessons from world class no-code coach',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 60.0,
                                  icon: FaIcon(
                                    FontAwesomeIcons.chevronRight,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 20.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 16.0,
                                  borderWidth: 1.0,
                                  buttonSize: 60.0,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  icon: Icon(
                                    Icons.people,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 32.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Exclusive Community',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium,
                                        ),
                                        Text(
                                          'Exclusive access to private nocode community',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 60.0,
                                  icon: FaIcon(
                                    FontAwesomeIcons.chevronRight,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 20.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 16.0,
                                  borderWidth: 1.0,
                                  buttonSize: 60.0,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  icon: FaIcon(
                                    FontAwesomeIcons.certificate,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Completion Certificate',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium,
                                        ),
                                        Text(
                                          'Get a certificate once you complete this course',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 60.0,
                                  icon: FaIcon(
                                    FontAwesomeIcons.chevronRight,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 20.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 0.0, 8.0),
                      child: Text(
                        'What You\'ll Learn',
                        style: FlutterFlowTheme.of(context).headlineMedium,
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
                                width: 250.0,
                                height: 140.0,
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
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.wrench,
                                        color: Colors.white,
                                        size: 30.0,
                                      ),
                                      Text(
                                        'Tools , Controls and Layouts',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  6.0, 0.0, 6.0, 0.0),
                              child: Container(
                                width: 250.0,
                                height: 140.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.network(
                                      '',
                                    ).image,
                                  ),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF4B39EF),
                                      Color(0xFFC57589)
                                    ],
                                    stops: [0.0, 1.0],
                                    begin: AlignmentDirectional(0.0, -1.0),
                                    end: AlignmentDirectional(0, 1.0),
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.database,
                                        color: Colors.white,
                                        size: 30.0,
                                      ),
                                      Text(
                                        'Data & Local State Variables',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  6.0, 0.0, 16.0, 0.0),
                              child: Container(
                                width: 250.0,
                                height: 140.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.network(
                                      '',
                                    ).image,
                                  ),
                                  gradient: LinearGradient(
                                    colors: [
                                      FlutterFlowTheme.of(context).tertiary,
                                      FlutterFlowTheme.of(context).alternate
                                    ],
                                    stops: [0.0, 1.0],
                                    begin: AlignmentDirectional(0.0, -1.0),
                                    end: AlignmentDirectional(0, 1.0),
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.apple,
                                        color: Colors.white,
                                        size: 30.0,
                                      ),
                                      Text(
                                        'Publishing to the App Store',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
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
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Reviews',
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
                                width: 340.0,
                                height: 240.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.network(
                                      '',
                                    ).image,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                child: Image.network(
                                                  'https://i.pravatar.cc/150?img=13',
                                                  width: 40.0,
                                                  height: 40.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'John Doe',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              '24 Oct',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.star_purple500_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 34.0,
                                          ),
                                          Icon(
                                            Icons.star_purple500_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 34.0,
                                          ),
                                          Icon(
                                            Icons.star_purple500_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 34.0,
                                          ),
                                          Icon(
                                            Icons.star_purple500_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 34.0,
                                          ),
                                          Icon(
                                            Icons.star_border_purple500_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 34.0,
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras consectetur ut nisl a feugiat. Fusce mauris felis, pretium congue faucibus idiom.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  6.0, 0.0, 6.0, 0.0),
                              child: Container(
                                width: 340.0,
                                height: 240.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.network(
                                      '',
                                    ).image,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                child: Image.network(
                                                  'https://i.pravatar.cc/150?img=1',
                                                  width: 40.0,
                                                  height: 40.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Jane Doe',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              '24 Oct',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.star_purple500_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 34.0,
                                          ),
                                          Icon(
                                            Icons.star_purple500_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 34.0,
                                          ),
                                          Icon(
                                            Icons.star_purple500_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 34.0,
                                          ),
                                          Icon(
                                            Icons.star_purple500_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 34.0,
                                          ),
                                          Icon(
                                            Icons.star_border_purple500_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 34.0,
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras consectetur ut nisl a feugiat. Fusce mauris felis, pretium congue faucibus idiom.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  6.0, 0.0, 16.0, 0.0),
                              child: Container(
                                width: 340.0,
                                height: 240.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.network(
                                      '',
                                    ).image,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                child: Image.network(
                                                  'https://i.pravatar.cc/150?img=50',
                                                  width: 40.0,
                                                  height: 40.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Jolly Doe',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              '24 Oct',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.star_purple500_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 34.0,
                                          ),
                                          Icon(
                                            Icons.star_purple500_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 34.0,
                                          ),
                                          Icon(
                                            Icons.star_purple500_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 34.0,
                                          ),
                                          Icon(
                                            Icons.star_purple500_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 34.0,
                                          ),
                                          Icon(
                                            Icons.star_border_purple500_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 34.0,
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras consectetur ut nisl a feugiat. Fusce mauris felis, pretium congue faucibus idiom.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
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
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 8.0),
                            child: Text(
                              'Course Information',
                              style:
                                  FlutterFlowTheme.of(context).headlineMedium,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Course Level',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                Text(
                                  'Beginner',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Language',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                Text(
                                  'English, Spanish',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Chapters',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                Text(
                                  '20 Lessons',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Duration',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                Text(
                                  '50 hours',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Enroll',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 60.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: FaIcon(
                              FontAwesomeIcons.solidBookmark,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 18.0,
                            ),
                          ),
                          Text(
                            'Add to Bookmarks',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0x7F000000),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 16.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.chevronLeft,
                              color: Colors.white,
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
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0x80000000),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
