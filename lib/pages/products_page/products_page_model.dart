import '/backend/schema/structs/index.dart';
import '/components/sidebar/sidebar_widget.dart';
import '/components/topbar/topbar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'products_page_widget.dart' show ProductsPageWidget;
import 'package:flutter/material.dart';

class ProductsPageModel extends FlutterFlowModel<ProductsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sidebar component.
  late SidebarModel sidebarModel;
  // Model for topbar component.
  late TopbarModel topbarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ProductsStruct>();

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
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
