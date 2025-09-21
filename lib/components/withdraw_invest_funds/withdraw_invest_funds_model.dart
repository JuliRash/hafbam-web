import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'withdraw_invest_funds_widget.dart' show WithdrawInvestFundsWidget;
import 'package:flutter/material.dart';

class WithdrawInvestFundsModel
    extends FlutterFlowModel<WithdrawInvestFundsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Withdraw)] action in Button widget.
  ApiCallResponse? withdrawResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
