import '/components/my_page_button_widget.dart';
import '/components/reservation_button_widget.dart';
import '/components/sign_in_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'details_widget.dart' show DetailsWidget;
import 'package:flutter/material.dart';

class DetailsModel extends FlutterFlowModel<DetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for SignInButton component.
  late SignInButtonModel signInButtonModel;
  // Model for MyPageButton component.
  late MyPageButtonModel myPageButtonModel;
  // Model for ReservationButton component.
  late ReservationButtonModel reservationButtonModel;

  @override
  void initState(BuildContext context) {
    signInButtonModel = createModel(context, () => SignInButtonModel());
    myPageButtonModel = createModel(context, () => MyPageButtonModel());
    reservationButtonModel =
        createModel(context, () => ReservationButtonModel());
  }

  @override
  void dispose() {
    signInButtonModel.dispose();
    myPageButtonModel.dispose();
    reservationButtonModel.dispose();
  }
}
