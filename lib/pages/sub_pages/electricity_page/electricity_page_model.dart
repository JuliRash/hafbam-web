import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'electricity_page_widget.dart' show ElectricityPageWidget;
import 'package:flutter/material.dart';

class ElectricityPageModel extends FlutterFlowModel<ElectricityPageWidget> {
  ///  Local state fields for this page.

  String? selectedProvider = 'None Selected';

  String? verifiedName;

  List<dynamic> power = [];
  void addToPower(dynamic item) => power.add(item);
  void removeFromPower(dynamic item) => power.remove(item);
  void removeAtIndexFromPower(int index) => power.removeAt(index);
  void insertAtIndexInPower(int index, dynamic item) =>
      power.insert(index, item);
  void updatePowerAtIndex(int index, Function(dynamic) updateFn) =>
      power[index] = updateFn(power[index]);

  String? powerCode;

  dynamic verifiedResponse;

  String truthy = 'true';

  bool? error;

  String? custName;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Power Providers)] action in ElectricityPage widget.
  ApiCallResponse? success;
  // State field(s) for codeDropdown widget.
  String? codeDropdownValue;
  FormFieldController<String>? codeDropdownValueController;
  // State field(s) for meterTypeDropdown widget.
  String? meterTypeDropdownValue;
  FormFieldController<String>? meterTypeDropdownValueController;
  // State field(s) for meterNumber widget.
  FocusNode? meterNumberFocusNode;
  TextEditingController? meterNumberTextController;
  String? Function(BuildContext, String?)? meterNumberTextControllerValidator;
  // Stores action output result for [Backend Call - API (Verify Meter Number)] action in meterNumber widget.
  ApiCallResponse? verifyResponse;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (Buy Power)] action in Button widget.
  ApiCallResponse? apiResult5ek;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    meterNumberFocusNode?.dispose();
    meterNumberTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();

    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
