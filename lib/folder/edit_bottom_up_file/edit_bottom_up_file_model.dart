import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_bottom_up_file_widget.dart' show EditBottomUpFileWidget;
import 'package:flutter/material.dart';

class EditBottomUpFileModel extends FlutterFlowModel<EditBottomUpFileWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for editedFileName widget.
  FocusNode? editedFileNameFocusNode;
  TextEditingController? editedFileNameTextController;
  String? Function(BuildContext, String?)?
      editedFileNameTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<DocumentRow>? fileName;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    editedFileNameFocusNode?.dispose();
    editedFileNameTextController?.dispose();
  }
}
