import '/component/back_home_button/back_home_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'friend_ships_widget.dart' show FriendShipsWidget;
import 'package:flutter/material.dart';

class FriendShipsModel extends FlutterFlowModel<FriendShipsWidget> {
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
