import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'account_verification_widget.dart' show AccountVerificationWidget;
import 'package:flutter/material.dart';

class AccountVerificationModel
    extends FlutterFlowModel<AccountVerificationWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for BVN widget.
  FocusNode? bvnFocusNode;
  TextEditingController? bvnTextController;
  String? Function(BuildContext, String?)? bvnTextControllerValidator;
  // State field(s) for NIN widget.
  FocusNode? ninFocusNode;
  TextEditingController? ninTextController;
  String? Function(BuildContext, String?)? ninTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    bvnFocusNode?.dispose();
    bvnTextController?.dispose();

    ninFocusNode?.dispose();
    ninTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
