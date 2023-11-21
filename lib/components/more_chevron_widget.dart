import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'more_chevron_model.dart';
export 'more_chevron_model.dart';

class MoreChevronWidget extends StatefulWidget {
  const MoreChevronWidget({Key? key}) : super(key: key);

  @override
  _MoreChevronWidgetState createState() => _MoreChevronWidgetState();
}

class _MoreChevronWidgetState extends State<MoreChevronWidget> {
  late MoreChevronModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoreChevronModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: FlutterFlowTheme.of(context).primaryBackground,
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
        child: Icon(
          Icons.keyboard_arrow_right_rounded,
          color: FlutterFlowTheme.of(context).secondaryText,
          size: 24.0,
        ),
      ),
    );
  }
}
