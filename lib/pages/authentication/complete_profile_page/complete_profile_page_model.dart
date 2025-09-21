import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'complete_profile_page_widget.dart' show CompleteProfilePageWidget;
import 'package:flutter/material.dart';

class CompleteProfilePageModel
    extends FlutterFlowModel<CompleteProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for gender widget.
  FormFieldController<String>? genderValueController;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for altPhone widget.
  FocusNode? altPhoneFocusNode;
  TextEditingController? altPhoneTextController;
  String? Function(BuildContext, String?)? altPhoneTextControllerValidator;
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  // State field(s) for lga widget.
  FocusNode? lgaFocusNode;
  TextEditingController? lgaTextController;
  String? Function(BuildContext, String?)? lgaTextControllerValidator;
  // State field(s) for state widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateTextController;
  String? Function(BuildContext, String?)? stateTextControllerValidator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for BVN widget.
  FocusNode? bvnFocusNode;
  TextEditingController? bvnTextController;
  String? Function(BuildContext, String?)? bvnTextControllerValidator;
  // State field(s) for NIN widget.
  FocusNode? ninFocusNode;
  TextEditingController? ninTextController;
  String? Function(BuildContext, String?)? ninTextControllerValidator;
  // Stores action output result for [Backend Call - API (Update Profile)] action in Button widget.
  ApiCallResponse? completeProfileResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    altPhoneFocusNode?.dispose();
    altPhoneTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();

    lgaFocusNode?.dispose();
    lgaTextController?.dispose();

    stateFocusNode?.dispose();
    stateTextController?.dispose();

    bvnFocusNode?.dispose();
    bvnTextController?.dispose();

    ninFocusNode?.dispose();
    ninTextController?.dispose();
  }

  /// Additional helper methods.
  String? get genderValue => genderValueController?.value;
  String? get radioButtonValue => radioButtonValueController?.value;
}
