import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'edit_porfile_widget.dart' show EditPorfileWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditPorfileModel extends FlutterFlowModel<EditPorfileWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for displayName widget.
  FocusNode? displayNameFocusNode;
  TextEditingController? displayNameController;
  String? Function(BuildContext, String?)? displayNameControllerValidator;
  // State field(s) for introduction widget.
  FocusNode? introductionFocusNode;
  TextEditingController? introductionController;
  String? Function(BuildContext, String?)? introductionControllerValidator;
  // State field(s) for catergory widget.
  String? catergoryValue;
  FormFieldController<String>? catergoryValueController;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    displayNameFocusNode?.dispose();
    displayNameController?.dispose();

    introductionFocusNode?.dispose();
    introductionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
