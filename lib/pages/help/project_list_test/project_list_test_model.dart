import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'project_list_test_widget.dart' show ProjectListTestWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class ProjectListTestModel extends FlutterFlowModel<ProjectListTestWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for tagCC widget.
  FormFieldController<List<String>>? tagCCValueController;
  List<String>? get tagCCValues => tagCCValueController?.value;
  set tagCCValues(List<String>? val) => tagCCValueController?.value = val;
  // State field(s) for categoryDropdown widget.
  String? categoryDropdownValue;
  FormFieldController<String>? categoryDropdownValueController;
  // State field(s) for searchList widget.
  final searchListKey = GlobalKey();
  FocusNode? searchListFocusNode;
  TextEditingController? searchListController;
  String? searchListSelectedOption;
  String? Function(BuildContext, String?)? searchListControllerValidator;
  List<ProjectRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchListFocusNode?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
