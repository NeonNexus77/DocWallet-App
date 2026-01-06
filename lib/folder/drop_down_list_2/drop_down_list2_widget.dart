import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/folder/edit_bottom_up_file/edit_bottom_up_file_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'drop_down_list2_model.dart';
export 'drop_down_list2_model.dart';

class DropDownList2Widget extends StatefulWidget {
  const DropDownList2Widget({
    super.key,
    required this.documentID,
  });

  final String? documentID;

  @override
  State<DropDownList2Widget> createState() => _DropDownList2WidgetState();
}

class _DropDownList2WidgetState extends State<DropDownList2Widget> {
  late DropDownList2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropDownList2Model());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        FFButtonWidget(
          onPressed: () async {
            Navigator.pop(context);
            await showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              isDismissible: false,
              enableDrag: false,
              context: context,
              builder: (context) {
                return Padding(
                  padding: MediaQuery.viewInsetsOf(context),
                  child: EditBottomUpFileWidget(
                    fileId: widget.documentID!,
                  ),
                );
              },
            ).then((value) => safeSetState(() {}));
          },
          text: 'Edit',
          icon: Icon(
            Icons.edit,
            size: 20.0,
          ),
          options: FFButtonOptions(
            width: 117.0,
            height: 41.93,
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
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
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
            elevation: 0.0,
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
        FFButtonWidget(
          onPressed: () async {
            await DocumentTable().delete(
              matchingRows: (rows) => rows
                  .eqOrNull(
                    'document_id',
                    widget.documentID,
                  )
                  .eqOrNull(
                    'user_id',
                    FFAppState().userid,
                  ),
            );
            Navigator.pop(context);
          },
          text: 'Delete',
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
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
            elevation: 0.0,
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
        Builder(
          builder: (context) => FFButtonWidget(
            onPressed: () async {
              _model.data = await DocumentTable().queryRows(
                queryFn: (q) => q
                    .eqOrNull(
                      'document_id',
                      widget.documentID,
                    )
                    .eqOrNull(
                      'user_id',
                      FFAppState().userid,
                    ),
              );
              await Share.share(
                _model.data!.lastOrNull!.fileUrl!,
                sharePositionOrigin: getWidgetBoundingBox(context),
              );
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Successfully Shared',
                    style: TextStyle(
                      color: Color(0xFF057414),
                    ),
                  ),
                  duration: Duration(milliseconds: 4000),
                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                ),
              );

              safeSetState(() {});
            },
            text: 'Share',
            icon: Icon(
              Icons.share_rounded,
              size: 20.0,
            ),
            options: FFButtonOptions(
              width: 117.0,
              height: 41.9,
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
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
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
              elevation: 0.0,
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
              borderRadius: BorderRadius.circular(0.0),
            ),
          ),
        ),
      ],
    );
  }
}
