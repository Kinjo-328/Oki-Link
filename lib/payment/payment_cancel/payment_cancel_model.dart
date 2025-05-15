import '/component/back_home_button/back_home_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'payment_cancel_widget.dart' show PaymentCancelWidget;
import 'package:flutter/material.dart';

class PaymentCancelModel extends FlutterFlowModel<PaymentCancelWidget> {
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
