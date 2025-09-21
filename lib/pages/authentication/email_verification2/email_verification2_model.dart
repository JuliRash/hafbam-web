import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'email_verification2_widget.dart' show EmailVerification2Widget;
import 'package:flutter/material.dart';

class EmailVerification2Model
    extends FlutterFlowModel<EmailVerification2Widget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Resend Otp)] action in EmailVerification2 widget.
  ApiCallResponse? verifyResendCode;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (Verify New Account)] action in Button widget.
  ApiCallResponse? verifyResponse;
  // Stores action output result for [Backend Call - API (Resend Otp)] action in Text widget.
  ApiCallResponse? verifyResend;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
