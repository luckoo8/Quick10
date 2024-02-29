import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'reviews_model.dart';
export 'reviews_model.dart';

class ReviewsWidget extends StatefulWidget {
  const ReviewsWidget({super.key});

  @override
  State<ReviewsWidget> createState() => _ReviewsWidgetState();
}

class _ReviewsWidgetState extends State<ReviewsWidget> {
  late ReviewsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewsModel());

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
          preferredSize: Size.fromHeight(120.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 14.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Reviews',
                        style: FlutterFlowTheme.of(context).displaySmall,
                      ),
                    ),
                  ],
                ),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        child: Stack(
                          children: [
                            Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '4.8',
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 40.0,
                                          lineHeight: 1.0,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      'of 5',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            lineHeight: 1.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 16.0,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 16.0,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 16.0,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 16.0,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 16.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 4.0, 0.0, 4.0),
                                    child: LinearPercentIndicator(
                                      percent: 0.8,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.4,
                                      lineHeight: 6.0,
                                      animation: true,
                                      animateFromLastPercent: true,
                                      progressColor:
                                          FlutterFlowTheme.of(context).primary,
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                      barRadius: Radius.circular(20.0),
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 16.0,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 16.0,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 16.0,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 16.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 4.0, 0.0, 4.0),
                                    child: LinearPercentIndicator(
                                      percent: 0.2,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.4,
                                      lineHeight: 6.0,
                                      animation: true,
                                      animateFromLastPercent: true,
                                      progressColor:
                                          FlutterFlowTheme.of(context).primary,
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                      barRadius: Radius.circular(20.0),
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 16.0,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 16.0,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 16.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 4.0, 0.0, 4.0),
                                    child: LinearPercentIndicator(
                                      percent: 0.6,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.4,
                                      lineHeight: 6.0,
                                      animation: true,
                                      animateFromLastPercent: true,
                                      progressColor:
                                          FlutterFlowTheme.of(context).primary,
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                      barRadius: Radius.circular(20.0),
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 16.0,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 16.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 4.0, 0.0, 4.0),
                                    child: LinearPercentIndicator(
                                      percent: 0.5,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.4,
                                      lineHeight: 6.0,
                                      animation: true,
                                      animateFromLastPercent: true,
                                      progressColor:
                                          FlutterFlowTheme.of(context).primary,
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                      barRadius: Radius.circular(20.0),
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 16.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 4.0, 0.0, 4.0),
                                    child: LinearPercentIndicator(
                                      percent: 0.1,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.4,
                                      lineHeight: 6.0,
                                      animation: true,
                                      animateFromLastPercent: true,
                                      progressColor:
                                          FlutterFlowTheme.of(context).primary,
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                      barRadius: Radius.circular(20.0),
                                      padding: EdgeInsets.zero,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '3,200 ratings',
                                maxLines: 1,
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
                    ],
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  indent: 16.0,
                  endIndent: 16.0,
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tap to rate:',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
                            child: Icon(
                              Icons.star_border_purple500_outlined,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 35.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
                            child: Icon(
                              Icons.star_border_purple500_outlined,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 35.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
                            child: Icon(
                              Icons.star_border_purple500_outlined,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 35.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
                            child: Icon(
                              Icons.star_border_purple500_outlined,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 35.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
                            child: Icon(
                              Icons.star_border_purple500_outlined,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 35.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 8.0),
                        child: Container(
                          width: double.infinity,
                          height: 240.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                              BorderRadius.circular(100.0),
                                          child: Image.network(
                                            'https://i.pravatar.cc/150?img=13',
                                            width: 40.0,
                                            height: 40.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'John Doe',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        '24 Oct',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 34.0,
                                    ),
                                    Icon(
                                      Icons.star_purple500_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 34.0,
                                    ),
                                    Icon(
                                      Icons.star_purple500_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 34.0,
                                    ),
                                    Icon(
                                      Icons.star_purple500_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 34.0,
                                    ),
                                    Icon(
                                      Icons.star_border_purple500_sharp,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 34.0,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras consectetur ut nisl a feugiat. Fusce mauris felis, pretium congue faucibus idiom.',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 16.0, 8.0),
                        child: Container(
                          width: double.infinity,
                          height: 240.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                              BorderRadius.circular(100.0),
                                          child: Image.network(
                                            'https://i.pravatar.cc/150?img=1',
                                            width: 40.0,
                                            height: 40.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Jane Doe',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        '24 Oct',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 34.0,
                                    ),
                                    Icon(
                                      Icons.star_purple500_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 34.0,
                                    ),
                                    Icon(
                                      Icons.star_purple500_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 34.0,
                                    ),
                                    Icon(
                                      Icons.star_purple500_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 34.0,
                                    ),
                                    Icon(
                                      Icons.star_border_purple500_sharp,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 34.0,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras consectetur ut nisl a feugiat. Fusce mauris felis, pretium congue faucibus idiom.',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 16.0, 8.0),
                        child: Container(
                          width: double.infinity,
                          height: 240.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                              BorderRadius.circular(100.0),
                                          child: Image.network(
                                            'https://i.pravatar.cc/150?img=50',
                                            width: 40.0,
                                            height: 40.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Jolly Doe',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        '24 Oct',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 34.0,
                                    ),
                                    Icon(
                                      Icons.star_purple500_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 34.0,
                                    ),
                                    Icon(
                                      Icons.star_purple500_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 34.0,
                                    ),
                                    Icon(
                                      Icons.star_purple500_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 34.0,
                                    ),
                                    Icon(
                                      Icons.star_border_purple500_sharp,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 34.0,
                                    ),
                                  ],
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras consectetur ut nisl a feugiat. Fusce mauris felis, pretium congue faucibus idiom.',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ],
                            ),
                          ),
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
    );
  }
}
