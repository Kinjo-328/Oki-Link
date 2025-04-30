import '/components/reservation_dialog_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'reservation_button_model.dart';
export 'reservation_button_model.dart';

class ReservationButtonWidget extends StatefulWidget {
  const ReservationButtonWidget({super.key});

  @override
  State<ReservationButtonWidget> createState() =>
      _ReservationButtonWidgetState();
}

class _ReservationButtonWidgetState extends State<ReservationButtonWidget> {
  late ReservationButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReservationButtonModel());

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
      child: Builder(
        builder: (context) => FFButtonWidget(
          onPressed: () async {
            await showDialog(
              context: context,
              builder: (dialogContext) {
                return Dialog(
                  elevation: 0,
                  insetPadding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                  alignment: AlignmentDirectional(0.0, 0.0)
                      .resolve(Directionality.of(context)),
                  child: WebViewAware(
                    child: ReservationDialogWidget(),
                  ),
                );
              },
            );
          },
          text: 'Reservation',
          options: FFButtonOptions(
            width: 300.0,
            height: 80.0,
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).primary,
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  font: GoogleFonts.interTight(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleSmall.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 32.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                ),
            elevation: 10.0,
            borderRadius: BorderRadius.circular(14.0),
            hoverColor: FlutterFlowTheme.of(context).primaryBackground,
            hoverBorderSide: BorderSide(
              color: FlutterFlowTheme.of(context).primary,
            ),
            hoverTextColor: FlutterFlowTheme.of(context).primary,
          ),
        ),
      ),
    );
  }
}
