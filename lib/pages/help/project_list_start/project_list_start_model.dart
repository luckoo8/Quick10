import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/catergory_filter_widget.dart';
import '/components/tag_filter_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'project_list_start_widget.dart' show ProjectListStartWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class ProjectListStartModel extends FlutterFlowModel<ProjectListStartWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ProjectRecord> simpleSearchResults = [];
  // Model for tagFilter component.
  late TagFilterModel tagFilterModel;
  // Model for catergoryFilter component.
  late CatergoryFilterModel catergoryFilterModel;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, ProjectRecord>? listViewPagingController;
  Query? listViewPagingQuery;
  List<StreamSubscription?> listViewStreamSubscriptions = [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    tagFilterModel = createModel(context, () => TagFilterModel());
    catergoryFilterModel = createModel(context, () => CatergoryFilterModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();

    tagFilterModel.dispose();
    catergoryFilterModel.dispose();
    listViewStreamSubscriptions.forEach((s) => s?.cancel());
    listViewPagingController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  PagingController<DocumentSnapshot?, ProjectRecord> setListViewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController ??= _createListViewController(query, parent);
    if (listViewPagingQuery != query) {
      listViewPagingQuery = query;
      listViewPagingController?.refresh();
    }
    return listViewPagingController!;
  }

  PagingController<DocumentSnapshot?, ProjectRecord> _createListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, ProjectRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryProjectRecordPage(
          queryBuilder: (_) => listViewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions,
          controller: controller,
          pageSize: 10,
          isStream: true,
        ),
      );
  }
}
