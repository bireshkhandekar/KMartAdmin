import '/backend/api_requests/api_calls.dart';
import '/components/sidebar/sidebar_widget.dart';
import '/components/topbar/topbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'users_page_widget.dart' show UsersPageWidget;
import 'package:flutter/material.dart';

class UsersPageModel extends FlutterFlowModel<UsersPageWidget> {
  ///  Local state fields for this page.

  int? userPage = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for topbar component.
  late TopbarModel topbarModel;
  // Stores action output result for [Backend Call - API (user disable by user id)] action in IconButton widget.
  ApiCallResponse? userdisableResult;

  @override
  void initState(BuildContext context) {
    sidebarModel = createModel(context, () => SidebarModel());
    topbarModel = createModel(context, () => TopbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sidebarModel.dispose();
    topbarModel.dispose();
  }
}
