import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'contents_post_widget.dart' show ContentsPostWidget;
import 'package:flutter/material.dart';

class ContentsPostModel extends FlutterFlowModel<ContentsPostWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  bool isDataUploading_uploadWorkationPackagesPhoto = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadWorkationPackagesPhoto = [];
  List<String> uploadedFileUrls_uploadWorkationPackagesPhoto = [];

  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  WorkationPackagesRow? createWorkationPackage;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();
  }
}
