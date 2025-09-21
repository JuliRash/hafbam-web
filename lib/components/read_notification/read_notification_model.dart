import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'read_notification_widget.dart' show ReadNotificationWidget;
import 'package:flutter/material.dart';

class ReadNotificationModel extends FlutterFlowModel<ReadNotificationWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Notifications)] action in readNotification widget.
  ApiCallResponse? notisResult;
  // Stores action output result for [Backend Call - API (Read Notification)] action in Button widget.
  ApiCallResponse? readNotis;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
