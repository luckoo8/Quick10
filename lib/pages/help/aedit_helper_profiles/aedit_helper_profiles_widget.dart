import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'aedit_helper_profiles_model.dart';
export 'aedit_helper_profiles_model.dart';

class AeditHelperProfilesWidget extends StatefulWidget {
  const AeditHelperProfilesWidget({
    super.key,
    required this.editHelperProfilesRef,
  });

  final DocumentReference? editHelperProfilesRef;

  @override
  State<AeditHelperProfilesWidget> createState() =>
      _AeditHelperProfilesWidgetState();
}

class _AeditHelperProfilesWidgetState extends State<AeditHelperProfilesWidget>
    with TickerProviderStateMixin {
  late AeditHelperProfilesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(3.0, 3.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AeditHelperProfilesModel());

    _model.yourNameFocusNode1 ??= FocusNode();

    _model.yourNameFocusNode2 ??= FocusNode();

    _model.yourNameFocusNode3 ??= FocusNode();

    _model.editDiscriptionFocusNode ??= FocusNode();

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
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: Container(
                  width: double.infinity,
                  height: 130.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).primary,
                        FlutterFlowTheme.of(context).error,
                        FlutterFlowTheme.of(context).tertiary
                      ],
                      stops: [0.0, 0.5, 1.0],
                      begin: AlignmentDirectional(-1.0, -1.0),
                      end: AlignmentDirectional(1.0, 1.0),
                    ),
                  ),
                  child: Container(
                    width: 100.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0x00FFFFFF),
                          FlutterFlowTheme.of(context).secondaryBackground
                        ],
                        stops: [0.0, 1.0],
                        begin: AlignmentDirectional(0.0, -1.0),
                        end: AlignmentDirectional(0, 1.0),
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(-1.0, 1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 0.0, 24.0),
                        child: FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).accent4,
                          borderRadius: 12.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).accent4,
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            context.safePop();
                          },
                        ),
                      ),
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation']!),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                    maxWidth: 770.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: StreamBuilder<UsersRecord>(
                      stream: UsersRecord.getDocument(
                          widget.editHelperProfilesRef!),
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
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 0.0, 12.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    valueOrDefault<String>(
                                      '${currentUserDisplayName}님 안녕하세요',
                                      'Q10 헬퍼님 안녕하세요',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      height: 150.0,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Container(
                                              width: 150.0,
                                              height: 150.0,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                valueOrDefault<String>(
                                                  _model.uploadedFileUrl,
                                                  'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUSEhMVFRUXFxUXFxUXFxUVFRcXFxUWFxcXFRcYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDQ0NDw0NDisZFRkrKzc3LS0rKystLSstLSsrLSsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIALcBEwMBIgACEQEDEQH/xAAYAAEBAQEBAAAAAAAAAAAAAAAAAQIDB//EACQQAQEBAAEEAgEFAQAAAAAAAAABEQIhMUFRYXHwgZGh0eGx/8QAFgEBAQEAAAAAAAAAAAAAAAAAAAEC/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8A9olIi40hIIoGicvjuYBJ17i6aBppCAGh8gZ3NJU/wFtWJQAKSAWeylUEh2JPZQPzoLE0DFjNi8QDOwlBqpokgNZiaEAn8ranRJAbipFBiJIoBQhgJAkWQCJfS6AVOM93VMAN8GkgAlWUEXlCIC1P17qUDCEsAKsZ9rvgFBMAtFiUAoAhmLnoBZU1LSA1USw5X/AdIJxEGDFqKGFKughQoKlDANW1LDAXEimAESQgLolAXTkkWgLam/uQEi4JICkpEoLDE1QSqYAmLYAFNRQS6X7WJmA3xnQSKDJBAIWkoC0qGgYshUBbkRdONBISLQEqpACrEigkWJKoAlXQLegSgCcqaloLiyotBnnfCypyOMBrYmBIBqoUAIoNcReNEHNRLVC1UAVKYW+QFqSmfIBLumroIfqYAuILaCFv2ALUKoJpS2+lwA1F0GOfC29K1iwBCKkAXEz9zAAwk9gJLev21qAFgUG+Kpxqg54qWgAEUKIoEIFA1UIgAAQE5AppSgH0EBZf6QWgzKp5AKcoqQFQoBDQAsKQgBgAFphQdOIzx7ArOBQQxUASVS0AtNCqFJCiC1AAlKlXn2ACpIosD+UtRVXUhohAAKlUAw1KoFAAkL0AEkWmeQAAGuIcQGbQxLFFAxAwKWqJSLgBpQAMSS73W1BLx8+mkVRmT5IsKAWItAxOXwogtTQlAwwQFpIGgQNFEkWBECpiVeKiiWlB04hx7DI55VNSqKJIKCoS71AikTQUKIJigACUFCJJ5BSgBKYJxBUgcaBq6YKEEKBipSxBSoaopUioESCwG+Izx7eQVmh+fRiotIhaBoS+SoEgCi01IoFRdQDVlRYCE7/AoGiVUAKWaAkIoJVBQ/4CUFokqgCVUEVIRRSM2LgNwOIgxaWCKKrNzVAxaAJFRaAipAMhpIQDQwBRFwBFlZ1BV0poIEVRIqWn2C4gASGwwoLqUwQClIoaC4DXFU4qyOYDQFADSUADAAoAKgIGgKGGggzJ4zo0Ci1KAEpPYAWqACYAAgCgAQtACmADpxAZH//Z',
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          if (_model.uploadedFileUrl == null ||
                                              _model.uploadedFileUrl == '')
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width: 140.0,
                                                height: 140.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.network(
                                                  columnUsersRecord.photoUrl !=
                                                              null &&
                                                          columnUsersRecord
                                                                  .photoUrl !=
                                                              ''
                                                      ? columnUsersRecord
                                                          .photoUrl
                                                      : 'https://www.dlf.pt/dfpng/middlepng/421-4213239_admin-user-icon-free-profile-icon-png-transparent.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      80.0, 80.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  final selectedFiles =
                                                      await selectFiles(
                                                    multiFile: false,
                                                  );
                                                  if (selectedFiles != null) {
                                                    setState(() =>
                                                        _model.isDataUploading =
                                                            true);
                                                    var selectedUploadedFiles =
                                                        <FFUploadedFile>[];

                                                    var downloadUrls =
                                                        <String>[];
                                                    try {
                                                      selectedUploadedFiles =
                                                          selectedFiles
                                                              .map((m) =>
                                                                  FFUploadedFile(
                                                                    name: m
                                                                        .storagePath
                                                                        .split(
                                                                            '/')
                                                                        .last,
                                                                    bytes:
                                                                        m.bytes,
                                                                  ))
                                                              .toList();

                                                      downloadUrls =
                                                          (await Future.wait(
                                                        selectedFiles.map(
                                                          (f) async =>
                                                              await uploadData(
                                                                  f.storagePath,
                                                                  f.bytes),
                                                        ),
                                                      ))
                                                              .where((u) =>
                                                                  u != null)
                                                              .map((u) => u!)
                                                              .toList();
                                                    } finally {
                                                      _model.isDataUploading =
                                                          false;
                                                    }
                                                    if (selectedUploadedFiles
                                                                .length ==
                                                            selectedFiles
                                                                .length &&
                                                        downloadUrls.length ==
                                                            selectedFiles
                                                                .length) {
                                                      setState(() {
                                                        _model.uploadedLocalFile =
                                                            selectedUploadedFiles
                                                                .first;
                                                        _model.uploadedFileUrl =
                                                            downloadUrls.first;
                                                      });
                                                    } else {
                                                      setState(() {});
                                                      return;
                                                    }
                                                  }

                                                  await widget
                                                      .editHelperProfilesRef!
                                                      .update({
                                                    ...mapToFirestore(
                                                      {
                                                        'photo_url':
                                                            FieldValue.delete(),
                                                      },
                                                    ),
                                                  });
                                                },
                                                child: Icon(
                                                  Icons.camera_alt,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 36.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  22.0, 0.0, 0.0, 8.0),
                                          child: Text(
                                            '닉네임',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: TextFormField(
                                          controller:
                                              _model.yourNameController1 ??=
                                                  TextEditingController(
                                            text: columnUsersRecord.displayName,
                                          ),
                                          focusNode: _model.yourNameFocusNode1,
                                          autofillHints: [AutofillHints.name],
                                          textCapitalization:
                                              TextCapitalization.words,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium,
                                            hintText: 'Your full name...',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium,
                                            errorStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Open Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 12.0, 0.0, 12.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          maxLength: 20,
                                          maxLengthEnforcement:
                                              MaxLengthEnforcement.enforced,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          validator: _model
                                              .yourNameController1Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  22.0, 0.0, 0.0, 8.0),
                                          child: Text(
                                            '이메일주소',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: TextFormField(
                                          controller:
                                              _model.yourNameController2 ??=
                                                  TextEditingController(
                                            text: columnUsersRecord.email,
                                          ),
                                          focusNode: _model.yourNameFocusNode2,
                                          autofillHints: [AutofillHints.name],
                                          textCapitalization:
                                              TextCapitalization.words,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium,
                                            hintText:
                                                'Quick10에서 유용한 이메일 소식을 정기적으로 보내드려요.',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium,
                                            errorStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Open Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 12.0, 0.0, 12.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          maxLength: 20,
                                          maxLengthEnforcement:
                                              MaxLengthEnforcement.none,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          validator: _model
                                              .yourNameController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  22.0, 0.0, 0.0, 8.0),
                                          child: Text(
                                            '연락처',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 12.0),
                                        child: TextFormField(
                                          controller:
                                              _model.yourNameController3 ??=
                                                  TextEditingController(
                                            text: columnUsersRecord.phoneNumber,
                                          ),
                                          focusNode: _model.yourNameFocusNode3,
                                          autofillHints: [AutofillHints.name],
                                          textCapitalization:
                                              TextCapitalization.words,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium,
                                            hintText: 'Your full name...',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium,
                                            errorStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Open Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 12.0, 0.0, 12.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          maxLength: 20,
                                          maxLengthEnforcement:
                                              MaxLengthEnforcement.none,
                                          keyboardType: TextInputType.number,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          validator: _model
                                              .yourNameController3Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 8.0, 0.0, 8.0),
                                  child: Text(
                                    '전문 분야',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 12.0),
                                child: FlutterFlowCheckboxGroup(
                                  options: [
                                    'AI/업무자동화',
                                    '부업/창업',
                                    '정부자금/헤드헌팅',
                                    '마케팅/영업',
                                    '재무/회계',
                                    '경력/진로/심리',
                                    '기타'
                                  ],
                                  onChanged: (val) => setState(
                                      () => _model.checkboxGroupValues = val),
                                  controller:
                                      _model.checkboxGroupValueController ??=
                                          FormFieldController<List<String>>(
                                    [],
                                  ),
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  checkColor: FlutterFlowTheme.of(context).info,
                                  checkboxBorderColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                  unselectedTextStyle:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  itemPadding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
                                  checkboxBorderRadius:
                                      BorderRadius.circular(4.0),
                                  initialized:
                                      _model.checkboxGroupValues != null,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 8.0, 0.0, 8.0),
                                  child: Text(
                                    '커뮤니케이션 선호 유형',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 12.0),
                                child: FlutterFlowChoiceChips(
                                  options: [
                                    ChipData('통화', Icons.phone),
                                    ChipData('문자', Icons.chat_bubble_rounded),
                                    ChipData('상관없음')
                                  ],
                                  onChanged: (val) => setState(() => _model
                                      .choiceChipsValue = val?.firstOrNull),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    iconSize: 18.0,
                                    elevation: 4.0,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    iconSize: 18.0,
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  chipSpacing: 12.0,
                                  rowSpacing: 12.0,
                                  multiselect: false,
                                  alignment: WrapAlignment.start,
                                  controller:
                                      _model.choiceChipsValueController ??=
                                          FormFieldController<List<String>>(
                                    [],
                                  ),
                                  wrapped: true,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 8.0, 0.0, 8.0),
                                  child: Text(
                                    '소개글 ( 200자 이내 )',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 12.0),
                                child: TextFormField(
                                  controller:
                                      _model.editDiscriptionController ??=
                                          TextEditingController(
                                    text: valueOrDefault<String>(
                                      columnUsersRecord.discription,
                                      '안녕하세요',
                                    ),
                                  ),
                                  focusNode: _model.editDiscriptionFocusNode,
                                  autofocus: true,
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintText: 'A little about you...',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    errorStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 0.0, 12.0),
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                  textAlign: TextAlign.start,
                                  maxLines: 3,
                                  maxLength: 200,
                                  maxLengthEnforcement:
                                      MaxLengthEnforcement.enforced,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primary,
                                  validator: _model
                                      .editDiscriptionControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 24.0, 20.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      // updateUserInfo

                                      await currentUserReference!.update({
                                        ...createUsersRecordData(
                                          displayName: currentUserDisplayName,
                                          discription: _model
                                              .editDiscriptionController.text,
                                          createdTime: getCurrentTimestamp,
                                          format: _model.choiceChipsValue,
                                          photoUrl: _model.uploadedFileUrl,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'category':
                                                _model.checkboxGroupValues,
                                          },
                                        ),
                                      });
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            '프로필이 업데이트 되었습니다.',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                        ),
                                      );

                                      context.pushNamed(
                                        'ahelperProfile',
                                        queryParameters: {
                                          'helperProfileRef': serializeParam(
                                            widget.editHelperProfilesRef,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    text: '저장하기',
                                    options: FFButtonOptions(
                                      width: double.infinity,
                                      height: 44.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall,
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
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
