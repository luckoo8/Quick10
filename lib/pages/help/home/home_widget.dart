import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/help/applylist/applylist_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({
    super.key,
    this.projectRef,
    this.projectDocLsit,
    this.projectDoc,
    this.projectRefList,
    this.userRef,
    this.user,
  });

  final DocumentReference? projectRef;
  final List<ProjectRecord>? projectDocLsit;
  final ProjectRecord? projectDoc;
  final List<DocumentReference>? projectRefList;
  final DocumentReference? userRef;
  final UsersRecord? user;

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    _model.textController ??= TextEditingController();

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

    return StreamBuilder<List<ProjectRecord>>(
      stream: queryProjectRecord(
        queryBuilder: (projectRecord) => projectRecord
            .whereIn('category', _model.formatCCValues)
            .orderBy('timePosted', descending: true),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
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
          );
        }
        List<ProjectRecord> homeProjectRecordList = snapshot.data!;
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
                      child: Text(
                        'Quick10',
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 28.0,
                                ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 30.0, 0.0, 0.0),
                        child: Text(
                          '10분 지식 퀵서비스',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
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
                                  widget.userRef,
                                  ParamType.DocumentReference,
                                ),
                                'hmypageUsers': serializeParam(
                                  widget.user,
                                  ParamType.Document,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'hmypageUsers': widget.user,
                              },
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 3.0, 0.0),
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: CachedNetworkImage(
                          fadeInDuration: Duration(milliseconds: 500),
                          fadeOutDuration: Duration(milliseconds: 500),
                          imageUrl:
                              'https://static.vecteezy.com/system/resources/previews/007/688/906/original/quik-tips-free-vector.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 16.0, 12.0, 8.0),
                                    child: Autocomplete<String>(
                                      initialValue: TextEditingValue(),
                                      optionsBuilder: (textEditingValue) {
                                        if (textEditingValue.text == '') {
                                          return const Iterable<String>.empty();
                                        }
                                        return homeProjectRecordList
                                            .map((e) => e.title)
                                            .toList()
                                            .where((option) {
                                          final lowercaseOption =
                                              option.toLowerCase();
                                          return lowercaseOption.contains(
                                              textEditingValue.text
                                                  .toLowerCase());
                                        });
                                      },
                                      optionsViewBuilder:
                                          (context, onSelected, options) {
                                        return AutocompleteOptionsList(
                                          textFieldKey: _model.textFieldKey,
                                          textController:
                                              _model.textController!,
                                          options: options.toList(),
                                          onSelected: onSelected,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium,
                                          textHighlightStyle: TextStyle(),
                                          elevation: 4.0,
                                          optionBackgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          optionHighlightColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          maxHeight: 200.0,
                                        );
                                      },
                                      onSelected: (String selection) {
                                        setState(() =>
                                            _model.textFieldSelectedOption =
                                                selection);
                                        FocusScope.of(context).unfocus();
                                      },
                                      fieldViewBuilder: (
                                        context,
                                        textEditingController,
                                        focusNode,
                                        onEditingComplete,
                                      ) {
                                        _model.textFieldFocusNode = focusNode;

                                        _model.textController =
                                            textEditingController;
                                        return TextFormField(
                                          key: _model.textFieldKey,
                                          controller: textEditingController,
                                          focusNode: focusNode,
                                          onEditingComplete: onEditingComplete,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textController',
                                            Duration(milliseconds: 2000),
                                            () async {
                                              safeSetState(() {
                                                _model.simpleSearchResults =
                                                    TextSearch(
                                                  homeProjectRecordList
                                                      .map(
                                                        (record) =>
                                                            TextSearchItem
                                                                .fromTerms(
                                                                    record, [
                                                          record.title!
                                                        ]),
                                                      )
                                                      .toList(),
                                                )
                                                        .search(_model
                                                            .textController
                                                            .text)
                                                        .map((r) => r.object)
                                                        .toList();
                                                ;
                                              });
                                              setState(() {
                                                FFAppState().searchActive =
                                                    true;
                                              });
                                            },
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Search all articles...',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Color(0xFF606A85),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily:
                                                          'Plus Jakarta Sans',
                                                      color: Color(0xFF606A85),
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFE5E7EB),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF6F61EF),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFFF5963),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFFF5963),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: Color(0xFF15161E),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                          cursorColor: Color(0xFF6F61EF),
                                          validator: _model
                                              .textControllerValidator
                                              .asValidator(context),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      setState(() {
                                        _model.textController?.clear();
                                      });
                                      FFAppState().update(() {
                                        FFAppState().searchActive = false;
                                      });
                                    },
                                    child: Icon(
                                      Icons.search_off,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      size: 36.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'home',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 5),
                                          ),
                                        },
                                      );
                                    },
                                    child: Icon(
                                      Icons.restore,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 36.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.goNamed('aProjectNew');
                                    },
                                    child: Icon(
                                      Icons.post_add,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 36.0,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'ahelperList',
                                      queryParameters: {
                                        'listHelper': serializeParam(
                                          widget.userRef,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Icon(
                                    Icons.rocket_launch,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 28.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      18.0, 0.0, 0.0, 0.0),
                                  child: FlutterFlowChoiceChips(
                                    options: [
                                      ChipData('AI/업무자동화'),
                                      ChipData('창업/부업'),
                                      ChipData('정부자금/헤드헌팅'),
                                      ChipData('마케팅/영업'),
                                      ChipData('재무/회계'),
                                      ChipData('이직/진로'),
                                      ChipData('심리상담'),
                                      ChipData('기타')
                                    ],
                                    onChanged: (val) => setState(
                                        () => _model.formatCCValues = val),
                                    selectedChipStyle: ChipStyle(
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                      iconColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      iconSize: 24.0,
                                      elevation: 4.0,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    unselectedChipStyle: ChipStyle(
                                      backgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                      iconColor: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      iconSize: 22.0,
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    chipSpacing: 12.0,
                                    rowSpacing: 12.0,
                                    multiselect: true,
                                    initialized: _model.formatCCValues != null,
                                    alignment: WrapAlignment.start,
                                    controller:
                                        _model.formatCCValueController ??=
                                            FormFieldController<List<String>>(
                                      [],
                                    ),
                                    wrapped: false,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (!FFAppState().searchActive)
                          Builder(
                            builder: (context) {
                              final projectNoSearch =
                                  homeProjectRecordList.toList();
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: projectNoSearch.length,
                                itemBuilder: (context, projectNoSearchIndex) {
                                  final projectNoSearchItem =
                                      projectNoSearch[projectNoSearchIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
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
                                              currentUserReference,
                                              ParamType.DocumentReference,
                                            ),
                                            'projectDetailRef': serializeParam(
                                              projectNoSearchItem.reference,
                                              ParamType.DocumentReference,
                                            ),
                                            'projectDetail': serializeParam(
                                              projectNoSearchItem,
                                              ParamType.Document,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            'projectDetail':
                                                projectNoSearchItem,
                                          },
                                        );
                                      },
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 120.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 8.0, 12.0, 8.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 4.0,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4.0),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
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
                                                            MainAxisSize.max,
                                                        children: [
                                                          if ((projectNoSearchItem
                                                                      .format ==
                                                                  '문자') ||
                                                              (projectNoSearchItem
                                                                      .format ==
                                                                  '상관없음'))
                                                            Icon(
                                                              Icons
                                                                  .chat_bubble_outline,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          if ((projectNoSearchItem
                                                                      .format ==
                                                                  '통화') ||
                                                              (projectNoSearchItem
                                                                      .format ==
                                                                  '상관없음'))
                                                            Icon(
                                                              Icons.phone_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
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
                                                          projectNoSearchItem
                                                              .title,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 20.0,
                                                              ),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            dateTimeFormat(
                                                                'relative',
                                                                projectNoSearchItem
                                                                    .timePosted!),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Visibility(
                                                          visible: valueOrDefault<
                                                                  bool>(
                                                              currentUserDocument
                                                                  ?.helper,
                                                              false),
                                                          child:
                                                              AuthUserStreamWidget(
                                                            builder: (context) =>
                                                                StreamBuilder<
                                                                    ProjectRecord>(
                                                              stream: ProjectRecord
                                                                  .getDocument(
                                                                      projectNoSearchItem
                                                                          .reference),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                final stackProjectRecord =
                                                                    snapshot
                                                                        .data!;
                                                                return Stack(
                                                                  children: [
                                                                    if (stackProjectRecord
                                                                        .likedBy
                                                                        .contains(
                                                                            currentUserReference))
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
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
                                                                              await projectNoSearchItem.reference.update({
                                                                                ...mapToFirestore(
                                                                                  {
                                                                                    'liked_by': FieldValue.arrayRemove([
                                                                                      currentUserReference
                                                                                    ]),
                                                                                  },
                                                                                ),
                                                                              });
                                                                              setState(() {
                                                                                FFAppState().removeFromFavoritesProject(currentUserReference!.id);
                                                                              });
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.favorite_sharp,
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (!stackProjectRecord
                                                                        .likedBy
                                                                        .contains(
                                                                            currentUserReference))
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
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
                                                                              await projectNoSearchItem.reference.update({
                                                                                ...mapToFirestore(
                                                                                  {
                                                                                    'liked_by': FieldValue.arrayUnion([
                                                                                      currentUserReference
                                                                                    ]),
                                                                                  },
                                                                                ),
                                                                              });
                                                                              setState(() {
                                                                                FFAppState().addToFavoritesProject(currentUserReference!.id);
                                                                              });
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.favorite_border,
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                  ],
                                                                );
                                                              },
                                                            ),
                                                          ),
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
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        4.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              '${formatNumber(
                                                                projectNoSearchItem
                                                                    .cost,
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .automatic,
                                                              )}원',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        8.0),
                                                            child: Text(
                                                              '(${projectNoSearchItem.time})',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Builder(
                                                      builder: (context) =>
                                                          InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (dialogContext) {
                                                              return Dialog(
                                                                elevation: 0,
                                                                insetPadding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                alignment: AlignmentDirectional(
                                                                        0.0,
                                                                        0.0)
                                                                    .resolve(
                                                                        Directionality.of(
                                                                            context)),
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () => _model
                                                                          .unfocusNode
                                                                          .canRequestFocus
                                                                      ? FocusScope.of(
                                                                              context)
                                                                          .requestFocus(_model
                                                                              .unfocusNode)
                                                                      : FocusScope.of(
                                                                              context)
                                                                          .unfocus(),
                                                                  child:
                                                                      ApplylistWidget(
                                                                    applyhelper:
                                                                        projectNoSearchItem
                                                                            .reference,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              setState(() {}));
                                                        },
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            FutureBuilder<int>(
                                                              future:
                                                                  queryApplyRecordCount(
                                                                parent:
                                                                    projectNoSearchItem
                                                                        .reference,
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                int textCount =
                                                                    snapshot
                                                                        .data!;
                                                                return Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    '지원자 ${textCount.toString()}명',
                                                                    '지원자 0명',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                );
                                                              },
                                                            ),
                                                          ],
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
                                },
                              );
                            },
                          ),
                        if (FFAppState().searchActive)
                          Builder(
                            builder: (context) {
                              final projectNoSearch =
                                  _model.simpleSearchResults.toList();
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: projectNoSearch.length,
                                itemBuilder: (context, projectNoSearchIndex) {
                                  final projectNoSearchItem =
                                      projectNoSearch[projectNoSearchIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 16.0),
                                    child: FutureBuilder<ProjectRecord>(
                                      future: ProjectRecord.getDocumentOnce(
                                          projectNoSearchItem.reference),
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
                                        final orderCardProjectRecord =
                                            snapshot.data!;
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'ProjectDetaiRef',
                                              queryParameters: {
                                                'projectDetail': serializeParam(
                                                  projectNoSearchItem,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'projectDetail':
                                                    projectNoSearchItem,
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
                                                mainAxisSize: MainAxisSize.max,
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
                                                          BorderRadius.circular(
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
                                                              if (projectNoSearchItem
                                                                      .format ==
                                                                  '문자')
                                                                Icon(
                                                                  Icons
                                                                      .chat_bubble_outline,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                              if (projectNoSearchItem
                                                                      .format ==
                                                                  '통화')
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
                                                              projectNoSearchItem
                                                                  .title,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                                    projectNoSearchItem
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
                                                            .fromSTEB(12.0, 0.0,
                                                                0.0, 0.0),
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
                                                            child: StreamBuilder<
                                                                ProjectRecord>(
                                                              stream: ProjectRecord
                                                                  .getDocument(
                                                                      projectNoSearchItem
                                                                          .reference),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                final stackProjectRecord =
                                                                    snapshot
                                                                        .data!;
                                                                return Stack(
                                                                  children: [
                                                                    if (stackProjectRecord
                                                                        .likedBy
                                                                        .contains(
                                                                            currentUserReference))
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
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
                                                                              await projectNoSearchItem.reference.update({
                                                                                ...mapToFirestore(
                                                                                  {
                                                                                    'liked_by': FieldValue.arrayRemove([
                                                                                      currentUserReference
                                                                                    ]),
                                                                                  },
                                                                                ),
                                                                              });
                                                                              setState(() {
                                                                                FFAppState().removeFromFavoritesProject(currentUserReference!.id);
                                                                              });
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.favorite_sharp,
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (!stackProjectRecord
                                                                        .likedBy
                                                                        .contains(
                                                                            currentUserReference))
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
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
                                                                              await projectNoSearchItem.reference.update({
                                                                                ...mapToFirestore(
                                                                                  {
                                                                                    'liked_by': FieldValue.arrayUnion([
                                                                                      currentUserReference
                                                                                    ]),
                                                                                  },
                                                                                ),
                                                                              });
                                                                              setState(() {
                                                                                FFAppState().addToFavoritesProject(currentUserReference!.id);
                                                                              });
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.favorite_border,
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                  ],
                                                                );
                                                              },
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
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  '${formatNumber(
                                                                    projectNoSearchItem
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
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            4.0,
                                                                            0.0,
                                                                            8.0),
                                                                child: Text(
                                                                  '(${projectNoSearchItem.time})',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'applyList',
                                                              queryParameters: {
                                                                'applyList':
                                                                    serializeParam(
                                                                  projectNoSearchItem,
                                                                  ParamType
                                                                      .Document,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                'applyList':
                                                                    projectNoSearchItem,
                                                              },
                                                            );
                                                          },
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              FutureBuilder<
                                                                  int>(
                                                                future:
                                                                    queryApplyRecordCount(
                                                                  parent: orderCardProjectRecord
                                                                      .reference,
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          valueColor:
                                                                              AlwaysStoppedAnimation<Color>(
                                                                            FlutterFlowTheme.of(context).primary,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  int textCount =
                                                                      snapshot
                                                                          .data!;
                                                                  return Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      '지원자 ${textCount.toString()}명',
                                                                      '지원자 0명',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium,
                                                                  );
                                                                },
                                                              ),
                                                            ],
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
                                      },
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
              ),
            ),
          ),
        );
      },
    );
  }
}
