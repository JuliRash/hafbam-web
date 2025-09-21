import '/flutter_flow/flutter_flow_util.dart';
import 'reset_withdraw_p_i_n_widget.dart' show ResetWithdrawPINWidget;
import 'package:flutter/material.dart';

class ResetWithdrawPINModel extends FlutterFlowModel<ResetWithdrawPINWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController1;
  FocusNode? pinCodeFocusNode1;
  String? Function(BuildContext, String?)? pinCodeController1Validator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController2;
  FocusNode? pinCodeFocusNode2;
  String? Function(BuildContext, String?)? pinCodeController2Validator;

  @override
  void initState(BuildContext context) {
    pinCodeController1 = TextEditingController();
    pinCodeController2 = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode1?.dispose();
    pinCodeController1?.dispose();

    pinCodeFocusNode2?.dispose();
    pinCodeController2?.dispose();
  }
}
