import '/auth/base_auth_user_provider.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sign_in_button_model.dart';
export 'sign_in_button_model.dart';

class SignInButtonWidget extends StatefulWidget {
  const SignInButtonWidget({super.key});

  @override
  State<SignInButtonWidget> createState() => _SignInButtonWidgetState();
}

class _SignInButtonWidgetState extends State<SignInButtonWidget> {
  late SignInButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignInButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !loggedIn,
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: FFButtonWidget(
          onPressed: () async {
            context.pushNamed(AuthenticationWidget.routeName);
          },
          text: 'Sign in',
          options: FFButtonOptions(
            width: 200.0,
            height: 50.0,
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
                  fontSize: 28.0,
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
