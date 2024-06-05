import '/flutter_flow/flutter_flow_util.dart';
import 'user_set_p_i_n_widget.dart' show UserSetPINWidget;
import 'package:flutter/material.dart';

class UserSetPINModel extends FlutterFlowModel<UserSetPINWidget> {
  ///  Local state fields for this component.

  bool? pinMatch = true;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for mobileNumber widget.
  FocusNode? mobileNumberFocusNode;
  TextEditingController? mobileNumberTextController;
  String? Function(BuildContext, String?)? mobileNumberTextControllerValidator;
  // State field(s) for pin widget.
  FocusNode? pinFocusNode;
  TextEditingController? pinTextController;
  late bool pinVisibility;
  String? Function(BuildContext, String?)? pinTextControllerValidator;
  String? _pinTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for conformpin widget.
  FocusNode? conformpinFocusNode;
  TextEditingController? conformpinTextController;
  late bool conformpinVisibility;
  String? Function(BuildContext, String?)? conformpinTextControllerValidator;
  String? _conformpinTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    pinVisibility = false;
    pinTextControllerValidator = _pinTextControllerValidator;
    conformpinVisibility = false;
    conformpinTextControllerValidator = _conformpinTextControllerValidator;
  }

  @override
  void dispose() {
    mobileNumberFocusNode?.dispose();
    mobileNumberTextController?.dispose();

    pinFocusNode?.dispose();
    pinTextController?.dispose();

    conformpinFocusNode?.dispose();
    conformpinTextController?.dispose();
  }
}
