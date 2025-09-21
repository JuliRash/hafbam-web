import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'weekly_savings_form_widget.dart' show WeeklySavingsFormWidget;
import 'package:flutter/material.dart';

class WeeklySavingsFormModel extends FlutterFlowModel<WeeklySavingsFormWidget> {
  ///  Local state fields for this component.

  String weekly = 'weekly';

  dynamic selectedPlan;

  List<String> availDays = [];
  void addToAvailDays(String item) => availDays.add(item);
  void removeFromAvailDays(String item) => availDays.remove(item);
  void removeAtIndexFromAvailDays(int index) => availDays.removeAt(index);
  void insertAtIndexInAvailDays(int index, String item) =>
      availDays.insert(index, item);
  void updateAvailDaysAtIndex(int index, Function(String) updateFn) =>
      availDays[index] = updateFn(availDays[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Stats)] action in weeklySavingsForm widget.
  ApiCallResponse? fetchStats;
  // State field(s) for planid widget.
  String? planidValue;
  FormFieldController<String>? planidValueController;
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // Stores action output result for [Backend Call - API (Save)] action in Button widget.
  ApiCallResponse? saveSuccess;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    amountFocusNode?.dispose();
    amountTextController?.dispose();
  }
}
