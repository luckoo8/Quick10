import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'catergory_filter_model.dart';
export 'catergory_filter_model.dart';

class CatergoryFilterWidget extends StatefulWidget {
  const CatergoryFilterWidget({super.key});

  @override
  State<CatergoryFilterWidget> createState() => _CatergoryFilterWidgetState();
}

class _CatergoryFilterWidgetState extends State<CatergoryFilterWidget> {
  late CatergoryFilterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CatergoryFilterModel());

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

    return FlutterFlowDropDown<String>(
      controller: _model.dropDownValueController ??=
          FormFieldController<String>(null),
      options: [
        'AI/업무자동화',
        '창업/부업',
        '정부자금/헤드헌팅',
        '마케팅/영업',
        '재무/회계',
        '이직/진로',
        '심리상담',
        '기타'
      ],
      onChanged: (val) => setState(() => _model.dropDownValue = val),
      width: 122.0,
      height: 50.0,
      searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium,
      searchTextStyle: FlutterFlowTheme.of(context).bodyMedium,
      textStyle: FlutterFlowTheme.of(context).bodyMedium,
      hintText: '카테고리',
      searchHintText: 'Search for an item...',
      icon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: FlutterFlowTheme.of(context).secondaryText,
        size: 24.0,
      ),
      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 2.0,
      borderColor: FlutterFlowTheme.of(context).alternate,
      borderWidth: 2.0,
      borderRadius: 8.0,
      margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
      hidesUnderline: true,
      isOverButton: true,
      isSearchable: true,
      isMultiSelect: false,
    );
  }
}
