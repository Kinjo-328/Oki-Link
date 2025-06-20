import '/component/back_home_button/back_home_button_widget.dart';
import '/component/sign_in_button/sign_in_button_widget.dart';
import '/components/bottom_app_bar_widget.dart';
import '/contents/reservation_button/reservation_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_page/my_page_button/my_page_button_widget.dart';
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
  // Model for BackHomeButton component.
  late BackHomeButtonModel backHomeButtonModel;
  // Model for SignInButton component.
  late SignInButtonModel signInButtonModel;
  // Model for MyPageButton component.
  late MyPageButtonModel myPageButtonModel;
  // Model for ReservationButton component.
  late ReservationButtonModel reservationButtonModel;
  // Model for BottomAppBar component.
  late BottomAppBarModel bottomAppBarModel;

  @override
  void initState(BuildContext context) {
    backHomeButtonModel = createModel(context, () => BackHomeButtonModel());
    signInButtonModel = createModel(context, () => SignInButtonModel());
    myPageButtonModel = createModel(context, () => MyPageButtonModel());
    reservationButtonModel =
        createModel(context, () => ReservationButtonModel());
    bottomAppBarModel = createModel(context, () => BottomAppBarModel());
  }

  @override
  void dispose() {
    backHomeButtonModel.dispose();
    signInButtonModel.dispose();
    myPageButtonModel.dispose();
    reservationButtonModel.dispose();
    bottomAppBarModel.dispose();
  }
}
