import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'a_project_new_widget.dart' show AProjectNewWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AProjectNewModel extends FlutterFlowModel<AProjectNewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Help_TitleField widget.
  FocusNode? helpTitleFieldFocusNode;
  TextEditingController? helpTitleFieldController;
  String? Function(BuildContext, String?)? helpTitleFieldControllerValidator;
  String? _helpTitleFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Help_CostField widget.
  FocusNode? helpCostFieldFocusNode;
  TextEditingController? helpCostFieldController;
  String? Function(BuildContext, String?)? helpCostFieldControllerValidator;
  String? _helpCostFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('000#').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for Help_TextField widget.
  FocusNode? helpTextFieldFocusNode;
  TextEditingController? helpTextFieldController;
  String? Function(BuildContext, String?)? helpTextFieldControllerValidator;
  String? _helpTextFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 10) {
      return 'Requires at least 10 characters.';
    }
    if (val.length > 300) {
      return 'Maximum 300 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for categoryCC widget.
  FormFieldController<List<String>>? categoryCCValueController;
  String? get categoryCCValue => categoryCCValueController?.value?.firstOrNull;
  set categoryCCValue(String? val) =>
      categoryCCValueController?.value = val != null ? [val] : [];
  // State field(s) for formatCC widget.
  FormFieldController<List<String>>? formatCCValueController;
  String? get formatCCValue => formatCCValueController?.value?.firstOrNull;
  set formatCCValue(String? val) =>
      formatCCValueController?.value = val != null ? [val] : [];
  // State field(s) for timeCC widget.
  FormFieldController<List<String>>? timeCCValueController;
  String? get timeCCValue => timeCCValueController?.value?.firstOrNull;
  set timeCCValue(String? val) =>
      timeCCValueController?.value = val != null ? [val] : [];
  // State field(s) for tagCC widget.
  FormFieldController<List<String>>? tagCCValueController;
  List<String>? get tagCCValues => tagCCValueController?.value;
  set tagCCValues(List<String>? val) => tagCCValueController?.value = val;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ProjectRecord? createProject;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    helpTitleFieldControllerValidator = _helpTitleFieldControllerValidator;
    helpCostFieldControllerValidator = _helpCostFieldControllerValidator;
    helpTextFieldControllerValidator = _helpTextFieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    helpTitleFieldFocusNode?.dispose();
    helpTitleFieldController?.dispose();

    helpCostFieldFocusNode?.dispose();
    helpCostFieldController?.dispose();

    helpTextFieldFocusNode?.dispose();
    helpTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
