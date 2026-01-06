import '/flutter_flow/flutter_flow_util.dart';
import 'upload_page_widget.dart' show UploadPageWidget;
import 'package:flutter/material.dart';

class UploadPageModel extends FlutterFlowModel<UploadPageWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataYd2 = false;
  FFUploadedFile uploadedLocalFile_uploadDataYd2 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataYd2 = '';

  // State field(s) for file_name widget.
  FocusNode? fileNameFocusNode;
  TextEditingController? fileNameTextController;
  String? Function(BuildContext, String?)? fileNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fileNameFocusNode?.dispose();
    fileNameTextController?.dispose();
  }
}
