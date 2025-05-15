import '/component/back_home_button/back_home_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'payment_success_widget.dart' show PaymentSuccessWidget;
import 'package:flutter/material.dart';

class PaymentSuccessModel extends FlutterFlowModel<PaymentSuccessWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BackHomeButton component.
  late BackHomeButtonModel backHomeButtonModel;

  @override
  void initState(BuildContext context) {
    backHomeButtonModel = createModel(context, () => BackHomeButtonModel());
  }

  @override
  void dispose() {
    backHomeButtonModel.dispose();
  }
}
