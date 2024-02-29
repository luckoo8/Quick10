import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tag_filter_model.dart';
export 'tag_filter_model.dart';

class TagFilterWidget extends StatefulWidget {
  const TagFilterWidget({super.key});

  @override
  State<TagFilterWidget> createState() => _TagFilterWidgetState();
}

class _TagFilterWidgetState extends State<TagFilterWidget> {
  late TagFilterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TagFilterModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
      child: FlutterFlowChoiceChips(
        options: [ChipData('긴급'), ChipData('협의'), ChipData('인증')],
        onChanged: (val) => setState(() => _model.choiceChipsValues = val),
        selectedChipStyle: ChipStyle(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Open Sans',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
          iconColor: FlutterFlowTheme.of(context).primaryText,
          iconSize: 24.0,
          elevation: 4.0,
          borderRadius: BorderRadius.circular(16.0),
        ),
        unselectedChipStyle: ChipStyle(
          backgroundColor: FlutterFlowTheme.of(context).secondaryText,
          textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Open Sans',
                fontSize: 18.0,
              ),
          iconColor: FlutterFlowTheme.of(context).primaryText,
          iconSize: 24.0,
          elevation: 0.0,
          borderRadius: BorderRadius.circular(16.0),
        ),
        chipSpacing: 12.0,
        rowSpacing: 12.0,
        multiselect: true,
        initialized: _model.choiceChipsValues != null,
        alignment: WrapAlignment.start,
        controller: _model.choiceChipsValueController ??=
            FormFieldController<List<String>>(
          [],
        ),
        wrapped: true,
      ),
    );
  }
}
