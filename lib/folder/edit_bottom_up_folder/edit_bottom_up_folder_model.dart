import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_bottom_up_folder_widget.dart' show EditBottomUpFolderWidget;
import 'package:flutter/material.dart';

class EditBottomUpFolderModel
    extends FlutterFlowModel<EditBottomUpFolderWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for editedFolderName widget.
  FocusNode? editedFolderNameFocusNode;
  TextEditingController? editedFolderNameTextController;
  String? Function(BuildContext, String?)?
      editedFolderNameTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<FoldersRow>? folderName;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    editedFolderNameFocusNode?.dispose();
    editedFolderNameTextController?.dispose();
  }
}
