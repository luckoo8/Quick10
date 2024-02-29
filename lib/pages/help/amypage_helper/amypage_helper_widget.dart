import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'amypage_helper_model.dart';
export 'amypage_helper_model.dart';

class AmypageHelperWidget extends StatefulWidget {
  const AmypageHelperWidget({
    super.key,
    this.hmypageUserRef,
    this.hmypageProjectRef,
    this.hmypageProject,
    this.applyhelper,
    this.hmypageUsers,
  });

  final DocumentReference? hmypageUserRef;
  final DocumentReference? hmypageProjectRef;
  final ProjectRecord? hmypageProject;
  final DocumentReference? applyhelper;
  final UsersRecord? hmypageUsers;

  @override
  State<AmypageHelperWidget> createState() => _AmypageHelperWidgetState();
}

class _AmypageHelperWidgetState extends State<AmypageHelperWidget>
    with TickerProviderStateMixin {
  late AmypageHelperModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 90.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 90.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AmypageHelperModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          iconTheme:
              IconThemeData(color: FlutterFlowTheme.of(context).tertiary),
          automaticallyImplyLeading: true,
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
                  child: Text(
                    '마이페이지',
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Poppins',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (valueOrDefault<bool>(
                              currentUserDocument?.helper, false) ==
                          true) {
                        context.pushNamed(
                          'amypageHelper',
                          queryParameters: {
                            'hmypageUserRef': serializeParam(
                              currentUserReference,
                              ParamType.DocumentReference,
                            ),
                          }.withoutNulls,
                        );
                      } else {
                        context.pushNamed(
                          'amypageUser',
                          queryParameters: {
                            'mypageUser': serializeParam(
                              currentUserReference,
                              ParamType.DocumentReference,
                            ),
                          }.withoutNulls,
                        );
                      }
                    },
                    child: Icon(
                      Icons.location_history,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 36.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 3.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('asetting');
                      },
                      child: Icon(
                        Icons.settings_sharp,
                        color: FlutterFlowTheme.of(context).tertiary,
                        size: 32.0,
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      GoRouter.of(context).prepareAuthEvent();
                      await authManager.signOut();
                      GoRouter.of(context).clearRedirectLocation();

                      context.goNamedAuth('aLoginWeb', context.mounted);
                    },
                    child: Icon(
                      Icons.logout,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 32.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 140.0,
                          child: Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          child: Image.network(
                                            currentUserPhoto,
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: ClipOval(
                                    child: Container(
                                      width: 44.0,
                                      height: 44.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 4.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          child: Image.asset(
                                            Theme.of(context).brightness ==
                                                    Brightness.dark
                                                ? 'assets/images/@4xff_badgeDesign_dark_small.png'
                                                : 'assets/images/@4xff_badgeDesign_light_small.png',
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 8.0, 0.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      currentUserDisplayName,
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Open Sans',
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.edit,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 28.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 2.0, 0.0),
                            child: Container(
                              width: 90.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primary,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  '헬퍼',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBtnText,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (valueOrDefault<bool>(
                                currentUserDocument?.helper, false))
                              AuthUserStreamWidget(
                                builder: (context) => Switch.adaptive(
                                  value: _model.switchValue ??= false,
                                  onChanged: (newValue) async {
                                    setState(
                                        () => _model.switchValue = newValue!);
                                    if (newValue!) {
                                      context.pushNamed('amypageUser');
                                    }
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  activeTrackColor:
                                      FlutterFlowTheme.of(context).accent1,
                                  inactiveTrackColor: Color(0xFF4C73B6),
                                  inactiveThumbColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                ),
                              ),
                            if (valueOrDefault<bool>(
                                currentUserDocument?.helper, false))
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  '의뢰인 전환',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: Container(
                          width: 200.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 12.0, 12.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.diamond_sharp,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 44.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 4.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      valueOrDefault<String>(
                                        formatNumber(
                                          valueOrDefault(
                                              currentUserDocument?.profit, 0),
                                          formatType: FormatType.decimal,
                                          decimalType: DecimalType.automatic,
                                        ),
                                        '0',
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 18.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Text(
                                  '총 수익',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation1']!),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: Container(
                          width: 200.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 12.0, 12.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.handshake,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 44.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 4.0),
                                  child: AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      valueOrDefault<String>(
                                        valueOrDefault(
                                                currentUserDocument
                                                    ?.successNumber,
                                                0)
                                            .toString(),
                                        '0',
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 18.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Text(
                                  '진행건수',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation2']!),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment(0.0, 0),
                        child: FlutterFlowButtonTabBar(
                          useToggleButtonStyle: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          unselectedLabelStyle: TextStyle(),
                          labelColor: FlutterFlowTheme.of(context).accent4,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          backgroundColor: FlutterFlowTheme.of(context).primary,
                          unselectedBackgroundColor:
                              FlutterFlowTheme.of(context).info,
                          borderColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          borderWidth: 2.0,
                          borderRadius: 12.0,
                          elevation: 0.0,
                          labelPadding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          tabs: [
                            Tab(
                              text: '내 제안',
                            ),
                            Tab(
                              text: '북마크',
                            ),
                            Tab(
                              text: '완료',
                            ),
                          ],
                          controller: _model.tabBarController,
                          onTap: (i) async {
                            [() async {}, () async {}, () async {}][i]();
                          },
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 0.0, 0.0),
                                  child: Text(
                                    '보낸 제안글',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    StreamBuilder<List<ApplyRecord>>(
                                      stream: queryApplyRecord(
                                        queryBuilder: (applyRecord) =>
                                            applyRecord.where(
                                          'helperID',
                                          isEqualTo: currentUserReference,
                                        ),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<ApplyRecord>
                                            listViewApplyRecordList =
                                            snapshot.data!;
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewApplyRecordList.length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewApplyRecord =
                                                listViewApplyRecordList[
                                                    listViewIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 12.0, 16.0, 16.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height: 260.0,
                                                constraints: BoxConstraints(
                                                  maxHeight: 100.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 12.0,
                                                      color: Color(0x34000000),
                                                      offset: Offset(-2.0, 5.0),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 8.0, 12.0, 8.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 4.0,
                                                        height: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  listViewApplyRecord
                                                                      .projectTitle,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    AutoSizeText(
                                                                  '${listViewApplyRecord.timePosted?.toString()} 게시 / ${listViewApplyRecord.applyTime?.toString()} 지원'
                                                                      .maybeHandleOverflow(
                                                                    maxChars:
                                                                        70,
                                                                    replacement:
                                                                        '…',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                  minFontSize:
                                                                      10.0,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          4.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      '${formatNumber(
                                                                        listViewApplyRecord
                                                                            .cost,
                                                                        formatType:
                                                                            FormatType.decimal,
                                                                        decimalType:
                                                                            DecimalType.automatic,
                                                                      )}원',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            8.0),
                                                                    child: Text(
                                                                      '( ${listViewApplyRecord.time} )',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                StreamBuilder<List<ProjectRecord>>(
                                  stream: queryProjectRecord(
                                    queryBuilder: (projectRecord) =>
                                        projectRecord.where(
                                      'liked_by',
                                      arrayContains: currentUserReference,
                                    ),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<ProjectRecord>
                                        listViewProjectRecordList =
                                        snapshot.data!;
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount:
                                          listViewProjectRecordList.length,
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewProjectRecord =
                                            listViewProjectRecordList[
                                                listViewIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 12.0, 16.0, 16.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'aProjectDetail',
                                                queryParameters: {
                                                  'projectDetailUserRef':
                                                      serializeParam(
                                                    widget.hmypageUserRef,
                                                    ParamType.DocumentReference,
                                                  ),
                                                  'projectDetailRef':
                                                      serializeParam(
                                                    widget.hmypageProjectRef,
                                                    ParamType.DocumentReference,
                                                  ),
                                                  'projectDetail':
                                                      serializeParam(
                                                    widget.hmypageProject,
                                                    ParamType.Document,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  'projectDetail':
                                                      widget.hmypageProject,
                                                },
                                              );
                                            },
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: 120.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 12.0,
                                                    color: Color(0x34000000),
                                                    offset: Offset(-2.0, 5.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 8.0, 12.0, 8.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 4.0,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                if ((listViewProjectRecord
                                                                            .format ==
                                                                        '문자') ||
                                                                    (listViewProjectRecord
                                                                            .format ==
                                                                        '상관없음'))
                                                                  Icon(
                                                                    Icons
                                                                        .chat_bubble_outline,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                if ((listViewProjectRecord
                                                                            .format ==
                                                                        '통화') ||
                                                                    (listViewProjectRecord
                                                                            .format ==
                                                                        '상관없음'))
                                                                  Icon(
                                                                    Icons
                                                                        .phone_sharp,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                listViewProjectRecord
                                                                    .title,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          20.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  dateTimeFormat(
                                                                      'relative',
                                                                      listViewProjectRecord
                                                                          .timePosted!),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Stack(
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          await listViewProjectRecord
                                                                              .reference
                                                                              .update({
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'liked_by': FieldValue.arrayRemove([
                                                                                  currentUserReference
                                                                                ]),
                                                                              },
                                                                            ),
                                                                          });
                                                                          setState(
                                                                              () {
                                                                            FFAppState().removeFromFavoritesProject(currentUserReference!.id);
                                                                          });
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .favorite_sharp,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        4.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '${formatNumber(
                                                                      listViewProjectRecord
                                                                          .cost,
                                                                      formatType:
                                                                          FormatType
                                                                              .decimal,
                                                                      decimalType:
                                                                          DecimalType
                                                                              .automatic,
                                                                    )}원',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineSmall,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          8.0),
                                                                  child: Text(
                                                                    '(${listViewProjectRecord.time})',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  '지원자 ${listViewProjectRecord.applyCount.toString()}명',
                                                                  '지원자 0명',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
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
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                            Container(),
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
      ),
    );
  }
}
