import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'grid_view_card_model.dart';
export 'grid_view_card_model.dart';

class GridViewCardWidget extends StatefulWidget {
  const GridViewCardWidget({super.key});

  @override
  State<GridViewCardWidget> createState() => _GridViewCardWidgetState();
}

class _GridViewCardWidgetState extends State<GridViewCardWidget> {
  late GridViewCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GridViewCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).tertiary,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.network(
                'https://cdn.jalan.jp/jalan/images/pict2L/Y2/Y381702/Y381702AR3.jpg',
              ).image,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
    );
  }
}
