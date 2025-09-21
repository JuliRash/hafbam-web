import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'referral_widget.dart' show ReferralWidget;
import 'package:flutter/material.dart';

class ReferralModel extends FlutterFlowModel<ReferralWidget> {
  ///  Local state fields for this page.

  List<dynamic> referralList = [];
  void addToReferralList(dynamic item) => referralList.add(item);
  void removeFromReferralList(dynamic item) => referralList.remove(item);
  void removeAtIndexFromReferralList(int index) => referralList.removeAt(index);
  void insertAtIndexInReferralList(int index, dynamic item) =>
      referralList.insert(index, item);
  void updateReferralListAtIndex(int index, Function(dynamic) updateFn) =>
      referralList[index] = updateFn(referralList[index]);

  String totalPoints = '0';

  List<dynamic> formattedReferralList = [];
  void addToFormattedReferralList(dynamic item) =>
      formattedReferralList.add(item);
  void removeFromFormattedReferralList(dynamic item) =>
      formattedReferralList.remove(item);
  void removeAtIndexFromFormattedReferralList(int index) =>
      formattedReferralList.removeAt(index);
  void insertAtIndexInFormattedReferralList(int index, dynamic item) =>
      formattedReferralList.insert(index, item);
  void updateFormattedReferralListAtIndex(
          int index, Function(dynamic) updateFn) =>
      formattedReferralList[index] = updateFn(formattedReferralList[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Referred Users)] action in Referral widget.
  ApiCallResponse? apiResultmsv;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
