import '/component/my_page_button/my_page_button_widget.dart';
import '/component/sign_in_button/sign_in_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MyPageButton component.
  late MyPageButtonModel myPageButtonModel;
  // Model for SignInButton component.
  late SignInButtonModel signInButtonModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    myPageButtonModel = createModel(context, () => MyPageButtonModel());
    signInButtonModel = createModel(context, () => SignInButtonModel());
  }

  @override
  void dispose() {
    myPageButtonModel.dispose();
    signInButtonModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
