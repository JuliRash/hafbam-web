import '/flutter_flow/flutter_flow_util.dart';
import 'admin_pin_widget.dart' show AdminPinWidget;
import 'package:flutter/material.dart';

class AdminPinModel extends FlutterFlowModel<AdminPinWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
