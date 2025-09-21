import '/flutter_flow/flutter_flow_util.dart';
import 'with_funds_widget.dart' show WithFundsWidget;
import 'package:flutter/material.dart';

class WithFundsModel extends FlutterFlowModel<WithFundsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
