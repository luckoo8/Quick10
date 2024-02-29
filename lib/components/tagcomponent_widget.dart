import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tagcomponent_model.dart';
export 'tagcomponent_model.dart';

class TagcomponentWidget extends StatefulWidget {
  const TagcomponentWidget({super.key});

  @override
  State<TagcomponentWidget> createState() => _TagcomponentWidgetState();
}

class _TagcomponentWidgetState extends State<TagcomponentWidget> {
  late TagcomponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TagcomponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FlutterFlowChoiceChips(
      options: [
        ChipData('긴급'),
        ChipData('협의가능'),
        ChipData('인증'),
        ChipData('선착순')
      ],
      onChanged: (val) =>
          setState(() => _model.tagTransChoiceChipsValues = val),
      selectedChipStyle: ChipStyle(
        backgroundColor: FlutterFlowTheme.of(context).primary,
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Open Sans',
              color: FlutterFlowTheme.of(context).primaryText,
              fontWeight: FontWeight.w500,
            ),
        iconColor: FlutterFlowTheme.of(context).primaryText,
        iconSize: 18.0,
        elevation: 4.0,
        borderRadius: BorderRadius.circular(16.0),
      ),
      unselectedChipStyle: ChipStyle(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Open Sans',
              color: FlutterFlowTheme.of(context).secondaryText,
            ),
        iconColor: FlutterFlowTheme.of(context).secondaryText,
        iconSize: 18.0,
        elevation: 0.0,
        borderRadius: BorderRadius.circular(16.0),
      ),
      chipSpacing: 12.0,
      rowSpacing: 12.0,
      multiselect: true,
      initialized: _model.tagTransChoiceChipsValues != null,
      alignment: WrapAlignment.start,
      controller: _model.tagTransChoiceChipsValueController ??=
          FormFieldController<List<String>>(
        [],
      ),
      wrapped: true,
    );
  }
}
