import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'drop_down_list3_model.dart';
export 'drop_down_list3_model.dart';

class DropDownList3Widget extends StatefulWidget {
  const DropDownList3Widget({
    super.key,
    required this.shared,
  });

  final String? shared;

  @override
  State<DropDownList3Widget> createState() => _DropDownList3WidgetState();
}

class _DropDownList3WidgetState extends State<DropDownList3Widget> {
  late DropDownList3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropDownList3Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FFButtonWidget(
      onPressed: () async {
        await FamilyAccessTable().delete(
          matchingRows: (rows) => rows
              .eqOrNull(
                'user_id',
                FFAppState().userid,
              )
              .eqOrNull(
                'shared_to',
                widget.shared,
              ),
        );
        Navigator.pop(context);
      },
      text: 'Delete ',
      icon: Icon(
        Icons.delete,
        size: 20.0,
      ),
      options: FFButtonOptions(
        width: 117.0,
        height: 43.8,
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 1.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).secondaryBackground,
        textStyle: FlutterFlowTheme.of(context).headlineMedium.override(
              font: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontStyle:
                    FlutterFlowTheme.of(context).headlineMedium.fontStyle,
              ),
              fontSize: 20.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w500,
              fontStyle: FlutterFlowTheme.of(context).headlineMedium.fontStyle,
            ),
        elevation: 0.0,
        borderSide: BorderSide(
          color: FlutterFlowTheme.of(context).primaryText,
        ),
        borderRadius: BorderRadius.circular(0.0),
      ),
    );
  }
}
