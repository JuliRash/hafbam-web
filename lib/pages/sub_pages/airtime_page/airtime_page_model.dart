import '/backend/api_requests/api_calls.dart';
import '/components/networks/networks_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'airtime_page_widget.dart' show AirtimePageWidget;
import 'package:flutter/material.dart';

class AirtimePageModel extends FlutterFlowModel<AirtimePageWidget> {
  ///  Local state fields for this page.

  String selectedChip = '0';

  String? selectedPhone;

  ///  State fields for stateful widgets in this page.

  // Model for networks component.
  late NetworksModel networksModel;
  // State field(s) for PhoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for Amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (Buy Airtime)] action in Pay widget.
  ApiCallResponse? airtimepurchase;

  @override
  void initState(BuildContext context) {
    networksModel = createModel(context, () => NetworksModel());
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    networksModel.dispose();
    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();

    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
