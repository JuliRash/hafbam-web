import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'notifications_widget.dart' show NotificationsWidget;
import 'package:flutter/material.dart';

class NotificationsModel extends FlutterFlowModel<NotificationsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Notifications)] action in Notifications widget.
  ApiCallResponse? notisResponse;
  // Stores action output result for [Backend Call - API (Read All Notifications)] action in Button widget.
  ApiCallResponse? apiSuccess;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
