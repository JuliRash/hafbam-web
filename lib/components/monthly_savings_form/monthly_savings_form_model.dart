import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'monthly_savings_form_widget.dart' show MonthlySavingsFormWidget;
import 'package:flutter/material.dart';

class MonthlySavingsFormModel
    extends FlutterFlowModel<MonthlySavingsFormWidget> {
  ///  Local state fields for this component.

  DateTime? todaysDate;

  String monthly = 'monthly';

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // Stores action output result for [Backend Call - API (Save)] action in Button widget.
  ApiCallResponse? monthlySavingsResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();
  }
}
