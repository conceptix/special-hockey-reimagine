import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'get_ready_visualization_model.dart';
export 'get_ready_visualization_model.dart';

class GetReadyVisualizationWidget extends StatefulWidget {
  const GetReadyVisualizationWidget({Key? key}) : super(key: key);

  @override
  _GetReadyVisualizationWidgetState createState() =>
      _GetReadyVisualizationWidgetState();
}

class _GetReadyVisualizationWidgetState
    extends State<GetReadyVisualizationWidget> with TickerProviderStateMixin {
  late GetReadyVisualizationModel _model;

  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        ScaleEffect(
          curve: Curves.easeIn,
          delay: 2000.ms,
          duration: 35000.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(7.0, 7.0),
        ),
        MoveEffect(
          curve: Curves.easeIn,
          delay: 2000.ms,
          duration: 35000.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, -1200.0),
        ),
        FadeEffect(
          curve: Curves.easeIn,
          delay: 33000.ms,
          duration: 4000.ms,
          begin: 1.0,
          end: 0.0,
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GetReadyVisualizationModel());

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
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/visualization@10x.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),
            Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 5.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.of(context).zinc950,
                    Color(0x0009090B)
                  ],
                  stops: [0.0, 0.5],
                  begin: AlignmentDirectional(0.0, -1.0),
                  end: AlignmentDirectional(0, 1.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
