import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextUser widget.
  FocusNode? textUserFocusNode;
  TextEditingController? textUserTextController;
  String? Function(BuildContext, String?)? textUserTextControllerValidator;
  // State field(s) for TextPaswwor widget.
  FocusNode? textPaswworFocusNode;
  TextEditingController? textPaswworTextController;
  String? Function(BuildContext, String?)? textPaswworTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textUserFocusNode?.dispose();
    textUserTextController?.dispose();

    textPaswworFocusNode?.dispose();
    textPaswworTextController?.dispose();
  }
}
