import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'cable_page_widget.dart' show CablePageWidget;
import 'package:flutter/material.dart';

class CablePageModel extends FlutterFlowModel<CablePageWidget> {
  ///  Local state fields for this page.

  List<dynamic> cableSubs = [];
  void addToCableSubs(dynamic item) => cableSubs.add(item);
  void removeFromCableSubs(dynamic item) => cableSubs.remove(item);
  void removeAtIndexFromCableSubs(int index) => cableSubs.removeAt(index);
  void insertAtIndexInCableSubs(int index, dynamic item) =>
      cableSubs.insert(index, item);
  void updateCableSubsAtIndex(int index, Function(dynamic) updateFn) =>
      cableSubs[index] = updateFn(cableSubs[index]);

  String? selectedCable;

  String selectedPrice = '0';

  String? error;

  dynamic verifiedResponse;

  String? type;

  String? custName;

  String? custStatus;

  String? custDueDate;

  ///  State fields for stateful widgets in this page.

  // State field(s) for cables widget.
  String? cablesValue;
  FormFieldController<String>? cablesValueController;
  // Stores action output result for [Backend Call - API (Cable Providers)] action in cables widget.
  ApiCallResponse? cableProviderResp;
  // State field(s) for packages widget.
  String? packagesValue;
  FormFieldController<String>? packagesValueController;
  // State field(s) for smartcard_no widget.
  FocusNode? smartcardNoFocusNode;
  TextEditingController? smartcardNoTextController;
  String? Function(BuildContext, String?)? smartcardNoTextControllerValidator;
  // Stores action output result for [Backend Call - API (Verify Cable Smart Card )] action in smartcard_no widget.
  ApiCallResponse? verifyCableResponse;
  // State field(s) for type widget.
  FormFieldController<List<String>>? typeValueController;
  String? get typeValue => typeValueController?.value?.firstOrNull;
  set typeValue(String? val) =>
      typeValueController?.value = val != null ? [val] : [];
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (Buy Cable)] action in Button widget.
  ApiCallResponse? tvApiResponse;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    smartcardNoFocusNode?.dispose();
    smartcardNoTextController?.dispose();

    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
