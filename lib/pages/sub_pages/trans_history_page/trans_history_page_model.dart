import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'trans_history_page_widget.dart' show TransHistoryPageWidget;
import 'package:flutter/material.dart';

class TransHistoryPageModel extends FlutterFlowModel<TransHistoryPageWidget> {
  ///  Local state fields for this page.

  int currentPage = 1;

  ///  State fields for stateful widgets in this page.

  Completer<ApiCallResponse>? apiRequestCompleter;
  // State field(s) for FromField widget.
  FocusNode? fromFieldFocusNode;
  TextEditingController? fromFieldTextController;
  String? Function(BuildContext, String?)? fromFieldTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for ToField widget.
  FocusNode? toFieldFocusNode;
  TextEditingController? toFieldTextController;
  String? Function(BuildContext, String?)? toFieldTextControllerValidator;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fromFieldFocusNode?.dispose();
    fromFieldTextController?.dispose();

    toFieldFocusNode?.dispose();
    toFieldTextController?.dispose();
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
