import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'weekly_liquidation_b_s_widget.dart' show WeeklyLiquidationBSWidget;
import 'package:flutter/material.dart';

class WeeklyLiquidationBSModel
    extends FlutterFlowModel<WeeklyLiquidationBSWidget> {
  ///  Local state fields for this component.

  dynamic plan;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Stats)] action in weeklyLiquidationBS widget.
  ApiCallResponse? statResponse1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Liquidate)] action in Button widget.
  ApiCallResponse? liquidateResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
