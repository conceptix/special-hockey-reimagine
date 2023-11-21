import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'gamification_point_award_model.dart';
export 'gamification_point_award_model.dart';

class GamificationPointAwardWidget extends StatefulWidget {
  const GamificationPointAwardWidget({
    Key? key,
    int? points,
  })  : this.points = points ?? 10,
        super(key: key);

  final int points;

  @override
  _GamificationPointAwardWidgetState createState() =>
      _GamificationPointAwardWidgetState();
}

class _GamificationPointAwardWidgetState
    extends State<GamificationPointAwardWidget> with TickerProviderStateMixin {
  late GamificationPointAwardModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 30.0),
          end: Offset(0.0, 0.0),
        ),
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          hz: 3,
          offset: Offset(0.0, 0.0),
          rotation: 0.087,
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
    _model = createModel(context, () => GamificationPointAwardModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.soundPlayer1 ??= AudioPlayer();
      if (_model.soundPlayer1!.playing) {
        await _model.soundPlayer1!.stop();
      }
      _model.soundPlayer1!.setVolume(1.0);
      _model.soundPlayer1!
          .setUrl(
              'https://xbzcbzuswkoaftwhijvr.supabase.co/storage/v1/object/public/content/assets/gamification/ES_Magical%20Shimmer%20-%20SFX%20Producer.mp3?t=2023-11-20T01%3A36%3A30.772Z')
          .then((_) => _model.soundPlayer1!.play());

      _model.soundPlayer2 ??= AudioPlayer();
      if (_model.soundPlayer2!.playing) {
        await _model.soundPlayer2!.stop();
      }
      _model.soundPlayer2!.setVolume(1.0);
      _model.soundPlayer2!
          .setUrl(
              'https://xbzcbzuswkoaftwhijvr.supabase.co/storage/v1/object/public/content/assets/gamification/ES_Coin%20Slide%20Single%202%20-%20SFX%20Producer.mp3')
          .then((_) => _model.soundPlayer2!.play());

      _model.soundPlayer3 ??= AudioPlayer();
      if (_model.soundPlayer3!.playing) {
        await _model.soundPlayer3!.stop();
      }
      _model.soundPlayer3!.setVolume(1.0);
      _model.soundPlayer3!
          .setUrl(
              'https://xbzcbzuswkoaftwhijvr.supabase.co/storage/v1/object/public/content/assets/gamification/ES_Hockey%20Slap%20Shot%201%20-%20SFX%20Producer.mp3?t=2023-11-20T03%3A42%3A40.840Z')
          .then((_) => _model.soundPlayer3!.play());
    });

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 12.0, 12.0),
      child: Container(
        width: 230.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).warning,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x34090F13),
              offset: Offset(0.0, 2.0),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).warning,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: Container(
                          width: 36.0,
                          height: 36.0,
                          decoration: BoxDecoration(
                            color: Color(0x98FFFFFF),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: FaIcon(
                            FontAwesomeIcons.hockeyPuck,
                            color: Colors.white,
                            size: 20.0,
                          ),
                        ),
                      ),
                      Text(
                        'You\'ve Earned a Reward:',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Nunito',
                              fontSize: 12.0,
                            ),
                      ),
                      Text(
                        '${widget.points.toString()} Pucks',
                        style: FlutterFlowTheme.of(context).headlineLarge,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Text(
                          'Keep up the great work!',
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Nunito',
                                    fontSize: 12.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
