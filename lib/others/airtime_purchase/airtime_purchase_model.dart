import '/components/networks/networks_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'airtime_purchase_widget.dart' show AirtimePurchaseWidget;
import 'package:flutter/material.dart';

class AirtimePurchaseModel extends FlutterFlowModel<AirtimePurchaseWidget> {
  ///  State fields for stateful widgets in this component.

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

  @override
  void initState(BuildContext context) {
    networksModel = createModel(context, () => NetworksModel());
  }

  @override
  void dispose() {
    networksModel.dispose();
    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();
  }
}
