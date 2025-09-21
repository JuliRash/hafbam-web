import '/flutter_flow/flutter_flow_util.dart';
import 'airtime_pin_widget.dart' show AirtimePinWidget;
import 'package:flutter/material.dart';

class AirtimePinModel extends FlutterFlowModel<AirtimePinWidget> {
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
