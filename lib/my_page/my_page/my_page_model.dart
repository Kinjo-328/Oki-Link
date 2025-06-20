import '/backend/api_requests/api_calls.dart';
import '/component/sign_out_button/sign_out_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'my_page_widget.dart' show MyPageWidget;
import 'package:flutter/material.dart';

class MyPageModel extends FlutterFlowModel<MyPageWidget> {
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
