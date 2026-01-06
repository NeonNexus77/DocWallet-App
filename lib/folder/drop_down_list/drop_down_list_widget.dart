import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/folder/edit_bottom_up_folder/edit_bottom_up_folder_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'drop_down_list_model.dart';
export 'drop_down_list_model.dart';

class DropDownListWidget extends StatefulWidget {
  const DropDownListWidget({
    super.key,
    required this.folderID,
  });

  final String? folderID;

  @override
  State<DropDownListWidget> createState() => _DropDownListWidgetState();
}

class _DropDownListWidgetState extends State<DropDownListWidget> {
  late DropDownListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropDownListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  child: EditBottomUpFolderWidget(
                    folderId: widget.folderID!,
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
            height: 43.8,
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
            await FoldersTable().delete(
              matchingRows: (rows) => rows.eqOrNull(
                'folder_id',
                widget.folderID,
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
      ],
    );
  }
}
