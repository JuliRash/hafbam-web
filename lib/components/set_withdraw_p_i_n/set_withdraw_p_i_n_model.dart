import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'set_withdraw_p_i_n_widget.dart' show SetWithdrawPINWidget;
import 'package:flutter/material.dart';

class SetWithdrawPINModel extends FlutterFlowModel<SetWithdrawPINWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for OtpCode widget.
  TextEditingController? otpCode;
  FocusNode? otpCodeFocusNode;
  String? Function(BuildContext, String?)? otpCodeValidator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCode;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeValidator;
  // Stores action output result for [Backend Call - API (Update Pin)] action in Button widget.
  ApiCallResponse? setPinResponse;

  @override
  void initState(BuildContext context) {
    otpCode = TextEditingController();
    pinCode = TextEditingController();
  }

  @override
  void dispose() {
    otpCodeFocusNode?.dispose();
    otpCode?.dispose();

    pinCodeFocusNode?.dispose();
    pinCode?.dispose();
  }
}
