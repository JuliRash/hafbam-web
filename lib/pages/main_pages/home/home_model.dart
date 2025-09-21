import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  String deposit = 'deposit';

  String withdraw = 'withdraw';

  List<String> allTransactions = [];
  void addToAllTransactions(String item) => allTransactions.add(item);
  void removeFromAllTransactions(String item) => allTransactions.remove(item);
  void removeAtIndexFromAllTransactions(int index) =>
      allTransactions.removeAt(index);
  void insertAtIndexInAllTransactions(int index, String item) =>
      allTransactions.insert(index, item);
  void updateAllTransactionsAtIndex(int index, Function(String) updateFn) =>
      allTransactions[index] = updateFn(allTransactions[index]);

  List<dynamic> notis = [];
  void addToNotis(dynamic item) => notis.add(item);
  void removeFromNotis(dynamic item) => notis.remove(item);
  void removeAtIndexFromNotis(int index) => notis.removeAt(index);
  void insertAtIndexInNotis(int index, dynamic item) =>
      notis.insert(index, item);
  void updateNotisAtIndex(int index, Function(dynamic) updateFn) =>
      notis[index] = updateFn(notis[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get Profile)] action in Home widget.
  ApiCallResponse? getProfileResponseCopy;
  // Stores action output result for [Backend Call - API (Notifications)] action in Home widget.
  ApiCallResponse? notisResponse;
  // Stores action output result for [Backend Call - API (Get Profile)] action in Column widget.
  ApiCallResponse? getProfileResponse;
  // Stores action output result for [Backend Call - API (Notifications)] action in Column widget.
  ApiCallResponse? notisResponseCopy;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Stores action output result for [Backend Call - API (Get Profile)] action in Button widget.
  ApiCallResponse? fetchDetails;
  Completer<ApiCallResponse>? apiRequestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

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
