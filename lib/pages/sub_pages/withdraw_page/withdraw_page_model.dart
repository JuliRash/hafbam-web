import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'withdraw_page_widget.dart' show WithdrawPageWidget;
import 'package:flutter/material.dart';

class WithdrawPageModel extends FlutterFlowModel<WithdrawPageWidget> {
  ///  Local state fields for this page.

  String? accountName;

  /// selected bank
  String? selectedBank;

  int? setPIN;

  String? accountError;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get Profile)] action in WithdrawPage widget.
  ApiCallResponse? getPIN;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for identifier widget.
  FocusNode? identifierFocusNode;
  TextEditingController? identifierTextController;
  String? Function(BuildContext, String?)? identifierTextControllerValidator;
  // State field(s) for amountTf widget.
  FocusNode? amountTfFocusNode;
  TextEditingController? amountTfTextController;
  String? Function(BuildContext, String?)? amountTfTextControllerValidator;
  // State field(s) for bankId widget.
  String? bankIdValue;
  FormFieldController<String>? bankIdValueController;
  // Stores action output result for [Backend Call - API (Fetch Account Details)] action in bankId widget.
  ApiCallResponse? azaDetails1;
  // State field(s) for accountNumber widget.
  FocusNode? accountNumberFocusNode;
  TextEditingController? accountNumberTextController;
  String? Function(BuildContext, String?)? accountNumberTextControllerValidator;
  // Stores action output result for [Backend Call - API (Fetch Account Details)] action in accountNumber widget.
  ApiCallResponse? azaDetails;
  // Stores action output result for [Backend Call - API (Fetch Account Details)] action in accountNumber widget.
  ApiCallResponse? azaDetailsCopy;
  // State field(s) for amountBank widget.
  FocusNode? amountBankFocusNode;
  TextEditingController? amountBankTextController;
  String? Function(BuildContext, String?)? amountBankTextControllerValidator;
  // Stores action output result for [Backend Call - API (Get Profile)] action in Button widget.
  ApiCallResponse? getProfile;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    identifierFocusNode?.dispose();
    identifierTextController?.dispose();

    amountTfFocusNode?.dispose();
    amountTfTextController?.dispose();

    accountNumberFocusNode?.dispose();
    accountNumberTextController?.dispose();

    amountBankFocusNode?.dispose();
    amountBankTextController?.dispose();
  }
}
