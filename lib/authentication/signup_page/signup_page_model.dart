import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'signup_page_widget.dart' show SignupPageWidget;
import 'package:flutter/material.dart';

class SignupPageModel extends FlutterFlowModel<SignupPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for full_name widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  // State field(s) for email_address widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for pswd widget.
  FocusNode? pswdFocusNode;
  TextEditingController? pswdTextController;
  late bool pswdVisibility;
  String? Function(BuildContext, String?)? pswdTextControllerValidator;
  // State field(s) for cnfm_pswd widget.
  FocusNode? cnfmPswdFocusNode;
  TextEditingController? cnfmPswdTextController;
  late bool cnfmPswdVisibility;
  String? Function(BuildContext, String?)? cnfmPswdTextControllerValidator;

  @override
  void initState(BuildContext context) {
    pswdVisibility = false;
    cnfmPswdVisibility = false;
  }

  @override
  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    pswdFocusNode?.dispose();
    pswdTextController?.dispose();

    cnfmPswdFocusNode?.dispose();
    cnfmPswdTextController?.dispose();
  }
}
