import '/flutter_flow/flutter_flow_util.dart';
import 'electricity_pin_widget.dart' show ElectricityPinWidget;
import 'package:flutter/material.dart';

class ElectricityPinModel extends FlutterFlowModel<ElectricityPinWidget> {
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
