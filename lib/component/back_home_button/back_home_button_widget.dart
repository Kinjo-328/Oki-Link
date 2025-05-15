import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'back_home_button_model.dart';
export 'back_home_button_model.dart';

class BackHomeButtonWidget extends StatefulWidget {
  const BackHomeButtonWidget({super.key});

  @override
  State<BackHomeButtonWidget> createState() => _BackHomeButtonWidgetState();
}

class _BackHomeButtonWidgetState extends State<BackHomeButtonWidget> {
  late BackHomeButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BackHomeButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowIconButton(
      borderRadius: 8.0,
      buttonSize: 40.0,
      fillColor: FlutterFlowTheme.of(context).primary,
      icon: Icon(
        Icons.home,
        color: FlutterFlowTheme.of(context).info,
        size: 24.0,
      ),
      onPressed: () async {
        context.pushNamed(HomeWidget.routeName);
      },
    );
  }
}
