import '/flutter_flow/flutter_flow_util.dart';
import 'bottom_up_add_folder_widget.dart' show BottomUpAddFolderWidget;
import 'package:flutter/material.dart';

class BottomUpAddFolderModel extends FlutterFlowModel<BottomUpAddFolderWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for FolderName widget.
  FocusNode? folderNameFocusNode;
  TextEditingController? folderNameTextController;
  String? Function(BuildContext, String?)? folderNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    folderNameFocusNode?.dispose();
    folderNameTextController?.dispose();
  }
}
