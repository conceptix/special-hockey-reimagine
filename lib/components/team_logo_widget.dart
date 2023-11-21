import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'team_logo_model.dart';
export 'team_logo_model.dart';

class TeamLogoWidget extends StatefulWidget {
  const TeamLogoWidget({Key? key}) : super(key: key);

  @override
  _TeamLogoWidgetState createState() => _TeamLogoWidgetState();
}

class _TeamLogoWidgetState extends State<TeamLogoWidget> {
  late TeamLogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TeamLogoModel());

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

    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
        child: Hero(
          tag: 'teamLogo',
          transitionOnUserGestures: true,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: SvgPicture.asset(
              'assets/images/Niagara_IceDogs_logo.svg',
              width: 100.0,
              height: 100.0,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
