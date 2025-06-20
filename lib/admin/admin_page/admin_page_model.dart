import '/backend/api_requests/api_calls.dart';
import '/component/sign_out_button/sign_out_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'admin_page_widget.dart' show AdminPageWidget;
import 'package:flutter/material.dart';

class AdminPageModel extends FlutterFlowModel<AdminPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SignOutButton component.
  late SignOutButtonModel signOutButtonModel;
  // Stores action output result for [Backend Call - API (DeleteUSer)] action in Button widget.
  ApiCallResponse? deleteUser;

  @override
  void initState(BuildContext context) {
    signOutButtonModel = createModel(context, () => SignOutButtonModel());
  }

  @override
  void dispose() {
    signOutButtonModel.dispose();
  }
}
