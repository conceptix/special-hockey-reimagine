import '/components/coach_pep_talk_widget.dart';
import '/components/equipment_checklist_widget.dart';
import '/components/get_ready_visualization_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'get_ready_model.dart';
export 'get_ready_model.dart';

class GetReadyWidget extends StatefulWidget {
  const GetReadyWidget({Key? key}) : super(key: key);

  @override
  _GetReadyWidgetState createState() => _GetReadyWidgetState();
}

class _GetReadyWidgetState extends State<GetReadyWidget>
    with TickerProviderStateMixin {
  late GetReadyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 500.ms),
        FadeEffect(
          curve: Curves.easeOut,
          delay: 500.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeOut,
          delay: 500.ms,
          duration: 400.ms,
          begin: Offset(0.0, 40.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeIn,
          delay: 5000.ms,
          duration: 2000.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 5000.ms,
          duration: 2000.ms,
          begin: 1.0,
          end: 0.0,
        ),
      ],
    ),
    'iconOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 700.ms),
        FadeEffect(
          curve: Curves.easeOut,
          delay: 700.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 1400.ms,
          duration: 1000.ms,
          hz: 3,
          offset: Offset(0.0, 0.0),
          rotation: 0.087,
        ),
        FadeEffect(
          curve: Curves.easeIn,
          delay: 5000.ms,
          duration: 2000.ms,
          begin: 1.0,
          end: 0.0,
        ),
        MoveEffect(
          curve: Curves.bounceOut,
          delay: 700.ms,
          duration: 300.ms,
          begin: Offset(0.0, -100.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'buttonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeOut,
          delay: 10000.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'coachPepTalkOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GetReadyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.soundPlayer1 ??= AudioPlayer();
      if (_model.soundPlayer1!.playing) {
        await _model.soundPlayer1!.stop();
      }
      _model.soundPlayer1!.setVolume(1.0);
      _model.soundPlayer1!
          .setUrl(
              'https://xbzcbzuswkoaftwhijvr.supabase.co/storage/v1/object/public/content/assets/get-ready/letsgetready-intro.mp3')
          .then((_) => _model.soundPlayer1!.play());

      await Future.delayed(const Duration(milliseconds: 7000));
      await _model.getReadyPageViewController?.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _model.getReadyPageViewController ??=
                      PageController(initialPage: 0),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 40.0),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, -1.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 120.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 100.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .zinc950,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.00, 0.00),
                                          child: FaIcon(
                                            FontAwesomeIcons.trophy,
                                            color: FlutterFlowTheme.of(context)
                                                .warning,
                                            size: 48.0,
                                          ).animateOnPageLoad(animationsMap[
                                              'iconOnPageLoadAnimation']!),
                                        ),
                                      ),
                                      Text(
                                        'Let\'s get ready\nfor the game!',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .displayMedium,
                                      ),
                                    ],
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation']!),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: double.infinity,
                              child: custom_widgets.ConceptixConfettiOverlay(
                                width: double.infinity,
                                height: double.infinity,
                                loop: false,
                                particleCount: 100,
                                gravity: 0.1,
                                emissionFrequency: 0.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 40.0),
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: wrapWithModel(
                                model: _model.equipmentChecklistModel,
                                updateCallback: () => setState(() {}),
                                child: EquipmentChecklistWidget(),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 24.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () async {
                                      await _model.getReadyPageViewController
                                          ?.nextPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                      _model.soundPlayer2 ??= AudioPlayer();
                                      if (_model.soundPlayer2!.playing) {
                                        await _model.soundPlayer2!.stop();
                                      }
                                      _model.soundPlayer2!.setVolume(1.0);
                                      await _model.soundPlayer2!
                                          .setUrl(
                                              'https://xbzcbzuswkoaftwhijvr.supabase.co/storage/v1/object/public/content/assets/visualization/special-hockey-visualization-final.mp3')
                                          .then((_) =>
                                              _model.soundPlayer2!.play());

                                      await _model.getReadyPageViewController
                                          ?.nextPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    },
                                    text: 'Listen: It\'s game time!',
                                    icon: Icon(
                                      Icons.voice_chat,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).zinc800,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Nunito',
                                            color: FlutterFlowTheme.of(context)
                                                .zinc400,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'buttonOnPageLoadAnimation']!),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.getReadyVisualizationModel,
                      updateCallback: () => setState(() {}),
                      child: GetReadyVisualizationWidget(),
                    ),
                    wrapWithModel(
                      model: _model.coachPepTalkModel,
                      updateCallback: () => setState(() {}),
                      child: CoachPepTalkWidget(),
                    ).animateOnPageLoad(
                        animationsMap['coachPepTalkOnPageLoadAnimation']!),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
