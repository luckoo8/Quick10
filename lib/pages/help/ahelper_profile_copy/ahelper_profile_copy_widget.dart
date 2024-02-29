import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/help/awrite_review/awrite_review_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'ahelper_profile_copy_model.dart';
export 'ahelper_profile_copy_model.dart';

class AhelperProfileCopyWidget extends StatefulWidget {
  const AhelperProfileCopyWidget({
    super.key,
    this.helperProfileRef,
    this.helperProject,
    this.helperProfile,
  });

  final DocumentReference? helperProfileRef;
  final DocumentReference? helperProject;
  final UsersRecord? helperProfile;

  @override
  State<AhelperProfileCopyWidget> createState() =>
      _AhelperProfileCopyWidgetState();
}

class _AhelperProfileCopyWidgetState extends State<AhelperProfileCopyWidget> {
  late AhelperProfileCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AhelperProfileCopyModel());

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
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
            '돌아가기',
            style: FlutterFlowTheme.of(context).headlineMedium,
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
              StreamBuilder<UsersRecord>(
                stream: UsersRecord.getDocument(widget.helperProfileRef!),
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
                  final columnUsersRecord = snapshot.data!;
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.03),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  columnUsersRecord.photoUrl,
                                  width: double.infinity,
                                  height: 231.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          if (!valueOrDefault<bool>(
                              currentUserDocument?.helper, false))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 10.0, 0.0),
                              child: AuthUserStreamWidget(
                                builder: (context) => Stack(
                                  children: [
                                    if (columnUsersRecord.likedBy
                                        .contains(currentUserReference))
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
                                              await widget.helperProfileRef!
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'liked_by':
                                                        FieldValue.arrayRemove([
                                                      currentUserReference
                                                    ]),
                                                  },
                                                ),
                                              });
                                              setState(() {
                                                FFAppState()
                                                    .removeFromFavoritesProject(
                                                        currentUserReference!
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
                                    if (!columnUsersRecord.likedBy
                                        .contains(currentUserReference))
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
                                              await widget.helperProfileRef!
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'liked_by':
                                                        FieldValue.arrayUnion([
                                                      currentUserReference
                                                    ]),
                                                  },
                                                ),
                                              });
                                              setState(() {
                                                FFAppState()
                                                    .addToFavoritesHelper(
                                                        currentUserReference!
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
                                ),
                              ),
                            ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 8.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 8.0),
                                      child: Text(
                                        columnUsersRecord.displayName,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium,
                                      ),
                                    ),
                                    if (columnUsersRecord.helper)
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'aeditHelperProfiles',
                                            queryParameters: {
                                              'editHelperProfilesRef':
                                                  serializeParam(
                                                widget.helperProfileRef,
                                                ParamType.DocumentReference,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Icon(
                                          Icons.edit,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 28.0,
                                        ),
                                      ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 12.0),
                                  child: Builder(
                                    builder: (context) {
                                      final categoryHelper = columnUsersRecord
                                          .category
                                          .toList()
                                          .take(3)
                                          .toList();
                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children:
                                            List.generate(categoryHelper.length,
                                                (categoryHelperIndex) {
                                          final categoryHelperItem =
                                              categoryHelper[
                                                  categoryHelperIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 12.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: categoryHelperItem,
                                              options: FFButtonOptions(
                                                width: 80.0,
                                                height: 30.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  size: 24.0,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    functions
                                                        .averageRatings(
                                                            columnUsersRecord
                                                                .ratings
                                                                .toList())
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  ' ( ${columnUsersRecord.ratings.length.toString()}개 리뷰 )',
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
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 12.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 70.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Stack(
                                            children: [
                                              if ((columnUsersRecord.format ==
                                                      '문자') ||
                                                  (columnUsersRecord.format ==
                                                      '상관없음'))
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  12.0,
                                                                  0.0,
                                                                  12.0),
                                                      child: Icon(
                                                        Icons
                                                            .chat_bubble_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Text(
                                                        '문자',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              if (!((columnUsersRecord.format ==
                                                      '문자') ||
                                                  (columnUsersRecord.format ==
                                                      '상관없음')))
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  12.0,
                                                                  0.0,
                                                                  12.0),
                                                      child: Icon(
                                                        Icons.mail_lock,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Text(
                                                        '문자',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 100.0,
                                          child: VerticalDivider(
                                            thickness: 1.0,
                                            indent: 12.0,
                                            endIndent: 12.0,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                        ),
                                        Expanded(
                                          child: Stack(
                                            children: [
                                              if ((columnUsersRecord.format ==
                                                      '통화') ||
                                                  (columnUsersRecord.format ==
                                                      '상관없음'))
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  12.0,
                                                                  0.0,
                                                                  12.0),
                                                      child: Icon(
                                                        Icons.call_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Text(
                                                        '통화',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              if (!((columnUsersRecord.format ==
                                                      '통화') ||
                                                  (columnUsersRecord.format ==
                                                      '상관없음')))
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  12.0,
                                                                  0.0,
                                                                  12.0),
                                                      child: Icon(
                                                        Icons.phone_disabled,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Text(
                                                        '통화',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
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
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    '프로필',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 12.0),
                                    child: Text(
                                      columnUsersRecord.discription,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 14.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Builder(
                                  builder: (context) => FFButtonWidget(
                                    onPressed: () async {
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () => _model.unfocusNode
                                                      .canRequestFocus
                                                  ? FocusScope.of(context)
                                                      .requestFocus(
                                                          _model.unfocusNode)
                                                  : FocusScope.of(context)
                                                      .unfocus(),
                                              child: AwriteReviewWidget(
                                                helperReviewRef:
                                                    columnUsersRecord.reference,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));

                                      setState(() {});
                                    },
                                    text: '리뷰쓰기',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
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
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  PagedListView<DocumentSnapshot<Object?>?, RatingRecord>(
                    pagingController: _model.setListViewController(
                        RatingRecord.collection(widget.helperProfileRef)
                            .orderBy('date', descending: true),
                        parent: widget.helperProfileRef),
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    reverse: false,
                    scrollDirection: Axis.vertical,
                    builderDelegate: PagedChildBuilderDelegate<RatingRecord>(
                      // Customize what your widget looks like when it's loading the first page.
                      firstPageProgressIndicatorBuilder: (_) => Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      ),
                      // Customize what your widget looks like when it's loading another page.
                      newPageProgressIndicatorBuilder: (_) => Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      ),

                      itemBuilder: (context, _, listViewIndex) {
                        final listViewRatingRecord = _model
                            .listViewPagingController!.itemList![listViewIndex];
                        return StreamBuilder<UsersRecord>(
                          stream: UsersRecord.getDocument(
                              listViewRatingRecord.userID!),
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
                            final columnUsersRecord = snapshot.data!;
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            18.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.star,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          size: 24.0,
                                        ),
                                      ),
                                      Text(
                                        listViewRatingRecord.rating.toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                        child: VerticalDivider(
                                          width: 3.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .accent4,
                                        ),
                                      ),
                                      Text(
                                        dateTimeFormat('yMMMd',
                                            listViewRatingRecord.date!),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 18.0, 0.0),
                                            child: Text(
                                              columnUsersRecord.displayName,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            18.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          listViewRatingRecord.review,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
