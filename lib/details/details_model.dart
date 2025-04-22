import '/components/reservation_button_widget.dart';
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
  // Model for ReservationButton component.
  late ReservationButtonModel reservationButtonModel;

  @override
  void initState(BuildContext context) {
    reservationButtonModel =
        createModel(context, () => ReservationButtonModel());
  }

  @override
  void dispose() {
    reservationButtonModel.dispose();
  }
}
