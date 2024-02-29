import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/help/select_helper/select_helper_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'a_project_detail_model.dart';
export 'a_project_detail_model.dart';

class AProjectDetailWidget extends StatefulWidget {
  const AProjectDetailWidget({
    super.key,
    this.projectDetail,
    this.projectDetailUserRef,
    this.projectDetailRef,
    this.applyHelper,
    this.projectDetailUser,
  });

  final ProjectRecord? projectDetail;
  final DocumentReference? projectDetailUserRef;
  final DocumentReference? projectDetailRef;
  final DocumentReference? applyHelper;
  final UsersRecord? projectDetailUser;

  @override
  State<AProjectDetailWidget> createState() => _AProjectDetailWidgetState();
}

class _AProjectDetailWidgetState extends State<AProjectDetailWidget> {
  late AProjectDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AProjectDetailModel());

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
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            '리스트',
            style: FlutterFlowTheme.of(context).titleLarge,
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          GoRouter.of(context).prepareAuthEvent();
                          await authManager.signOut();
                          GoRouter.of(context).clearRedirectLocation();

                          context.goNamedAuth('aLoginWeb', context.mounted);
                        },
                        text: '로그아웃',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 12.0, 0.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  14.0, 0.0, 0.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  widget.projectDetail?.category,
                                  '카테고리 없음',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 0.0),
                                  child: Stack(
                                    children: [
                                      if (currentUserReference?.id ==
                                          widget.projectDetail?.createdBy?.id)
                                        Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'aProjectNew',
                                                queryParameters: {
                                                  'projectNewUserRef':
                                                      serializeParam(
                                                    currentUserReference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                  'projectNew': serializeParam(
                                                    widget.projectDetail,
                                                    ParamType.Document,
                                                  ),
                                                }.withoutNulls,
                                                extra: <String, dynamic>{
                                                  'projectNew':
                                                      widget.projectDetail,
                                                },
                                              );
                                            },
                                            child: Icon(
                                              Icons.mode,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            StreamBuilder<ProjectRecord>(
                              stream: ProjectRecord.getDocument(
                                  widget.projectDetailRef!),
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
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                final stackProjectRecord = snapshot.data!;
                                return Stack(
                                  children: [
                                    if (stackProjectRecord.likedBy
                                        .contains(widget.projectDetailUserRef))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 16.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await stackProjectRecord.reference
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'liked_by':
                                                        FieldValue.arrayRemove([
                                                      widget
                                                          .projectDetailUserRef
                                                    ]),
                                                  },
                                                ),
                                              });
                                              setState(() {
                                                FFAppState()
                                                    .removeFromFavoritesProject(
                                                        widget
                                                            .projectDetailUserRef!
                                                            .id);
                                              });
                                            },
                                            child: Icon(
                                              Icons.favorite_sharp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (!stackProjectRecord.likedBy
                                        .contains(widget.projectDetailUserRef))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 16.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await stackProjectRecord.reference
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'liked_by':
                                                        FieldValue.arrayUnion([
                                                      widget
                                                          .projectDetailUserRef
                                                    ]),
                                                  },
                                                ),
                                              });
                                              setState(() {
                                                FFAppState()
                                                    .addToFavoritesProject(widget
                                                        .projectDetailUserRef!
                                                        .id);
                                              });
                                            },
                                            child: Icon(
                                              Icons.favorite_border,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (valueOrDefault<bool>(
                            widget.projectDetail?.format == '문자',
                            true,
                          ))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: Icon(
                                Icons.chat_bubble_outline,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 30.0,
                              ),
                            ),
                          if (valueOrDefault<bool>(
                            widget.projectDetail?.format == '통화',
                            false,
                          ))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: Icon(
                                Icons.phone_sharp,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 30.0,
                              ),
                            ),
                          Flexible(
                            child: Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 14.0, 0.0),
                                child: Icon(
                                  Icons.share,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 7.0,
                                    color: Color(0x2F1D2429),
                                    offset: Offset(0.0, 3.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 16.0, 12.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      valueOrDefault<String>(
                                        widget.projectDetail?.title,
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Divider(
                                      height: 16.0,
                                      thickness: 2.0,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 4.0, 0.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          widget.projectDetail?.description,
                                          '내용없음',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 294.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: StreamBuilder<List<ApplyRecord>>(
                  stream: queryApplyRecord(
                    parent: widget.projectDetail?.reference,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<ApplyRecord> listViewApplyRecordList = snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewApplyRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewApplyRecord =
                            listViewApplyRecordList[listViewIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 8.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              setState(() {});

                              context.pushNamed(
                                'ahelperProfile',
                                queryParameters: {
                                  'helperProfileRef': serializeParam(
                                    listViewApplyRecord.helperID,
                                    ParamType.DocumentReference,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x32000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(26.0),
                                      child: Image.network(
                                        listViewApplyRecord.helperPhotoUrl,
                                        width: 36.0,
                                        height: 36.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                listViewApplyRecord
                                                    .helperDisplayName,
                                                '익명',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  size: 18.0,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 0.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      listViewApplyRecord
                                                          .helperRatings
                                                          .toString(),
                                                      '없음',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 12.0,
                                                  child: VerticalDivider(
                                                    thickness: 1.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent4,
                                                  ),
                                                ),
                                                Text(
                                                  valueOrDefault<String>(
                                                    '총 ${listViewApplyRecord.sucessNumber.toString()}회 진행',
                                                    '산규 헬퍼',
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        fontSize: 12.0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    if (currentUserUid ==
                                        listViewApplyRecord.userID)
                                      Builder(
                                        builder: (context) => FFButtonWidget(
                                          onPressed: () async {
                                            await showDialog(
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child: SelectHelperWidget(
                                                      selectHelperRef:
                                                          currentUserReference,
                                                      selectHelperApply:
                                                          listViewApplyRecord,
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));
                                          },
                                          text: '수락',
                                          options: FFButtonOptions(
                                            width: 70.0,
                                            height: 36.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      color: Colors.white,
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                            elevation: 2.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
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
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 12.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    var applyRecordReference =
                        ApplyRecord.createDoc(widget.projectDetail!.reference);
                    await applyRecordReference.set(createApplyRecordData(
                      applyTime: getCurrentTimestamp,
                      helperID: currentUserReference,
                      helperDisplayName: currentUserDisplayName,
                      helperPhotoUrl: currentUserPhoto,
                      timePosted: widget.projectDetail?.timePosted,
                      userID: currentUserReference?.id,
                      cost: widget.projectDetail?.cost,
                      time: widget.projectDetail?.time,
                      projectTitle: widget.projectDetail?.title,
                      category: widget.projectDetail?.category,
                      helperRatings: functions.averageRatings(
                          (currentUserDocument?.ratings?.toList() ?? [])
                              .toList()),
                    ));
                    _model.applyOutput = ApplyRecord.getDocumentFromData(
                        createApplyRecordData(
                          applyTime: getCurrentTimestamp,
                          helperID: currentUserReference,
                          helperDisplayName: currentUserDisplayName,
                          helperPhotoUrl: currentUserPhoto,
                          timePosted: widget.projectDetail?.timePosted,
                          userID: currentUserReference?.id,
                          cost: widget.projectDetail?.cost,
                          time: widget.projectDetail?.time,
                          projectTitle: widget.projectDetail?.title,
                          category: widget.projectDetail?.category,
                          helperRatings: functions.averageRatings(
                              (currentUserDocument?.ratings?.toList() ?? [])
                                  .toList()),
                        ),
                        applyRecordReference);

                    await widget.projectDetail!.reference.update({
                      ...mapToFirestore(
                        {
                          'applyCount': FieldValue.increment(1),
                        },
                      ),
                    });
                    setState(() {});

                    setState(() {});
                  },
                  text: '지원하기',
                  icon: Icon(
                    Icons.receipt_long,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 48.0,
                    padding: EdgeInsets.all(0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    elevation: 4.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(60.0),
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
