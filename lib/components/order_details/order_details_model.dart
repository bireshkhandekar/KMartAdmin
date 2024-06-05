import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'order_details_widget.dart' show OrderDetailsWidget;
import 'package:flutter/material.dart';

class OrderDetailsModel extends FlutterFlowModel<OrderDetailsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Backend Call - API (order Update)] action in Button widget.
  ApiCallResponse? apiResulupdteorder;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
