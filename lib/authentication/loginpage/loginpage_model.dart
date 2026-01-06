import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'loginpage_widget.dart' show LoginpageWidget;
import 'package:flutter/material.dart';

class LoginpageModel extends FlutterFlowModel<LoginpageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for email_login widget.
  FocusNode? emailLoginFocusNode;
  TextEditingController? emailLoginTextController;
  String? Function(BuildContext, String?)? emailLoginTextControllerValidator;
  // State field(s) for pswd_login widget.
  FocusNode? pswdLoginFocusNode;
  TextEditingController? pswdLoginTextController;
  late bool pswdLoginVisibility;
  String? Function(BuildContext, String?)? pswdLoginTextControllerValidator;

  @override
  void initState(BuildContext context) {
    pswdLoginVisibility = false;
  }

  @override
  void dispose() {
    emailLoginFocusNode?.dispose();
    emailLoginTextController?.dispose();

    pswdLoginFocusNode?.dispose();
    pswdLoginTextController?.dispose();
  }
}
