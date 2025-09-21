import '/backend/api_requests/api_calls.dart';
import '/components/networks/networks_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'dart:async';
import 'data_page_widget.dart' show DataPageWidget;
import 'package:flutter/material.dart';

class DataPageModel extends FlutterFlowModel<DataPageWidget> {
  ///  Local state fields for this page.

  String? selectedAmount = '0.00';

  String? selectedData;

  List<dynamic> dataPlans = [];
  void addToDataPlans(dynamic item) => dataPlans.add(item);
  void removeFromDataPlans(dynamic item) => dataPlans.remove(item);
  void removeAtIndexFromDataPlans(int index) => dataPlans.removeAt(index);
  void insertAtIndexInDataPlans(int index, dynamic item) =>
      dataPlans.insert(index, item);
  void updateDataPlansAtIndex(int index, Function(dynamic) updateFn) =>
      dataPlans[index] = updateFn(dataPlans[index]);

  ///  State fields for stateful widgets in this page.

  Completer<ApiCallResponse>? apiRequestCompleter;
  // Model for networks component.
  late NetworksModel networksModel;
  // State field(s) for PhoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for SelectData widget.
  String? selectDataValue;
  FormFieldController<String>? selectDataValueController;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (Buy Data)] action in Button widget.
  ApiCallResponse? dataSuucess;

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

    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
