import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_photo_widget.dart' show EditPhotoWidget;
import 'package:flutter/material.dart';

class EditPhotoModel extends FlutterFlowModel<EditPhotoWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading_profilePhoto = false;
  FFUploadedFile uploadedLocalFile_profilePhoto =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Update Profile Picture)] action in Button widget.
  ApiCallResponse? uploadedImage;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
