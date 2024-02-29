import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tagcomponent_widget.dart' show TagcomponentWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TagcomponentModel extends FlutterFlowModel<TagcomponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TagTransChoiceChips widget.
  FormFieldController<List<String>>? tagTransChoiceChipsValueController;
  List<String>? get tagTransChoiceChipsValues =>
      tagTransChoiceChipsValueController?.value;
  set tagTransChoiceChipsValues(List<String>? val) =>
      tagTransChoiceChipsValueController?.value = val;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
