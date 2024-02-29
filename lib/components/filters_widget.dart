import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filters_model.dart';
export 'filters_model.dart';

class FiltersWidget extends StatefulWidget {
  const FiltersWidget({super.key});

  @override
  State<FiltersWidget> createState() => _FiltersWidgetState();
}

class _FiltersWidgetState extends State<FiltersWidget> {
  late FiltersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FiltersModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(
            maxWidth: 1170.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 3.0,
                color: Color(0x33000000),
                offset: Offset(0.0, 1.0),
              )
            ],
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: Text(
                              'Card Header',
                              style:
                                  FlutterFlowTheme.of(context).headlineMedium,
                            ),
                          ),
                          Container(
                            height: 32.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              child: Text(
                                '12',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Filter',
                          icon: Icon(
                            Icons.filter_alt_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textStyle: FlutterFlowTheme.of(context).bodySmall,
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Container(
                        width: 270.0,
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          textCapitalization: TextCapitalization.sentences,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: 'Search users...',
                            hintStyle: FlutterFlowTheme.of(context).bodySmall,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 0.0),
                                  child: Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxValue1 ??= true,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.checkboxValue1 = newValue!);
                                      },
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Customer Information',
                                  style: FlutterFlowTheme.of(context).bodySmall,
                                ),
                              ],
                            ),
                          ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                          ))
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Paid On',
                                style: FlutterFlowTheme.of(context).bodySmall,
                              ),
                            ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                          ))
                            Expanded(
                              flex: 1,
                              child: Text(
                                'Invoice #',
                                style: FlutterFlowTheme.of(context).bodySmall,
                              ),
                            ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                          ))
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Amount',
                                style: FlutterFlowTheme.of(context).bodySmall,
                              ),
                            ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Status',
                              textAlign: TextAlign.end,
                              style: FlutterFlowTheme.of(context).bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                      child: Container(
                        width: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.0,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              offset: Offset(0.0, 1.0),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 12.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue2 ??=
                                                false,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                  .checkboxValue2 = newValue!);
                                            },
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            checkColor: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Randy Peterson',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                              ))
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    'Jan. 30th, 2023',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                              ))
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    '#4292',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    '\$2,100.00',
                                    style:
                                        FlutterFlowTheme.of(context).titleLarge,
                                  ),
                                ),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: FlutterFlowDropDown<String>(
                                        controller:
                                            _model.dropDownValueController1 ??=
                                                FormFieldController<String>(
                                          _model.dropDownValue1 ??= 'Pending',
                                        ),
                                        options: ['Pending', 'Paid', 'Overdue'],
                                        onChanged: (val) => setState(
                                            () => _model.dropDownValue1 = val),
                                        width: 60.0,
                                        height: 40.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 20.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        borderWidth: 2.0,
                                        borderRadius: 30.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 4.0, 20.0, 4.0),
                                        hidesUnderline: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                      child: Container(
                        width: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.0,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              offset: Offset(0.0, 1.0),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 12.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue3 ??=
                                                false,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                  .checkboxValue3 = newValue!);
                                            },
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            checkColor: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Randy Peterson',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                              ))
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    'Jan. 30th, 2023',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                              ))
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    '#4292',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    '\$2,100.00',
                                    style:
                                        FlutterFlowTheme.of(context).titleLarge,
                                  ),
                                ),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: FlutterFlowDropDown<String>(
                                        controller:
                                            _model.dropDownValueController2 ??=
                                                FormFieldController<String>(
                                          _model.dropDownValue2 ??= 'Pending',
                                        ),
                                        options: ['Pending', 'Paid', 'Overdue'],
                                        onChanged: (val) => setState(
                                            () => _model.dropDownValue2 = val),
                                        width: 60.0,
                                        height: 40.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 20.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        borderWidth: 2.0,
                                        borderRadius: 30.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 4.0, 20.0, 4.0),
                                        hidesUnderline: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                      child: Container(
                        width: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 0.0,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              offset: Offset(0.0, 1.0),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 12.0, 8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 12.0, 0.0),
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue4 ??=
                                                false,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                  .checkboxValue4 = newValue!);
                                            },
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            checkColor: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Randy Peterson',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                              ))
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    'Jan. 30th, 2023',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                              ))
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    '#4292',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    '\$2,100.00',
                                    style:
                                        FlutterFlowTheme.of(context).titleLarge,
                                  ),
                                ),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: FlutterFlowDropDown<String>(
                                        controller:
                                            _model.dropDownValueController3 ??=
                                                FormFieldController<String>(
                                          _model.dropDownValue3 ??= 'Pending',
                                        ),
                                        options: ['Pending', 'Paid', 'Overdue'],
                                        onChanged: (val) => setState(
                                            () => _model.dropDownValue3 = val),
                                        width: 60.0,
                                        height: 40.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 20.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        borderWidth: 2.0,
                                        borderRadius: 30.0,
                                        margin: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 4.0, 20.0, 4.0),
                                        hidesUnderline: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
