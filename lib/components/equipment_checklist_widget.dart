import '/backend/backend.dart';
import '/components/equipment_item_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'equipment_checklist_model.dart';
export 'equipment_checklist_model.dart';

class EquipmentChecklistWidget extends StatefulWidget {
  const EquipmentChecklistWidget({Key? key}) : super(key: key);

  @override
  _EquipmentChecklistWidgetState createState() =>
      _EquipmentChecklistWidgetState();
}

class _EquipmentChecklistWidgetState extends State<EquipmentChecklistWidget>
    with TickerProviderStateMixin {
  late EquipmentChecklistModel _model;

  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 7600.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 7600.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeOut,
          delay: 7600.ms,
          duration: 300.ms,
          begin: Offset(0.0, 60.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 7000.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 7000.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeOut,
          delay: 7000.ms,
          duration: 300.ms,
          begin: Offset(0.0, 60.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'progressBarOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.05, 1.05),
        ),
        ShakeEffect(
          curve: Curves.easeOut,
          delay: 0.ms,
          duration: 200.ms,
          hz: 3,
          offset: Offset(0.0, 25.0),
          rotation: 0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      applyInitialState: true,
      effects: [
        VisibilityEffect(duration: 1000.ms),
        MoveEffect(
          curve: Curves.bounceOut,
          delay: 1000.ms,
          duration: 600.ms,
          begin: Offset(0.0, -600.0),
          end: Offset(0.0, 0.0),
        ),
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 1000.ms,
          duration: 600.ms,
          begin: 0.01,
          end: 0.0,
        ),
        FadeEffect(
          curve: Curves.linear,
          delay: 1000.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'equipmentItemOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 1000.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.2, 1.2),
        ),
        ShakeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 1000.ms,
          hz: 4,
          offset: Offset(0.0, 0.0),
          rotation: 0.087,
        ),
        FadeEffect(
          curve: Curves.easeOut,
          delay: 1000.ms,
          duration: 400.ms,
          begin: 1.0,
          end: 0.0,
        ),
        ScaleEffect(
          curve: Curves.easeOut,
          delay: 1000.ms,
          duration: 400.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(0.0, 0.0),
        ),
        MoveEffect(
          curve: Curves.easeOut,
          delay: 1000.ms,
          duration: 400.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, -200.0),
        ),
      ],
    ),
    'equipmentItemOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 1000.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.2, 1.2),
        ),
        ShakeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 1000.ms,
          hz: 4,
          offset: Offset(0.0, 0.0),
          rotation: 0.087,
        ),
        FadeEffect(
          curve: Curves.easeOut,
          delay: 1000.ms,
          duration: 400.ms,
          begin: 1.0,
          end: 0.0,
        ),
        ScaleEffect(
          curve: Curves.easeOut,
          delay: 1000.ms,
          duration: 400.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(0.0, 0.0),
        ),
        MoveEffect(
          curve: Curves.easeOut,
          delay: 1000.ms,
          duration: 400.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, -200.0),
        ),
      ],
    ),
    'equipmentItemOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 1000.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.2, 1.2),
        ),
        ShakeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 1000.ms,
          hz: 4,
          offset: Offset(0.0, 0.0),
          rotation: 0.087,
        ),
        FadeEffect(
          curve: Curves.easeOut,
          delay: 1000.ms,
          duration: 400.ms,
          begin: 1.0,
          end: 0.0,
        ),
        ScaleEffect(
          curve: Curves.easeOut,
          delay: 1000.ms,
          duration: 400.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(0.0, 0.0),
        ),
        MoveEffect(
          curve: Curves.easeOut,
          delay: 1000.ms,
          duration: 400.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, -200.0),
        ),
      ],
    ),
    'equipmentItemOnActionTriggerAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 1000.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.2, 1.2),
        ),
        ShakeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 1000.ms,
          hz: 4,
          offset: Offset(0.0, 0.0),
          rotation: 0.087,
        ),
        FadeEffect(
          curve: Curves.easeOut,
          delay: 1000.ms,
          duration: 400.ms,
          begin: 1.0,
          end: 0.0,
        ),
        ScaleEffect(
          curve: Curves.easeOut,
          delay: 1000.ms,
          duration: 400.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(0.0, 0.0),
        ),
        MoveEffect(
          curve: Curves.easeOut,
          delay: 1000.ms,
          duration: 400.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, -200.0),
        ),
      ],
    ),
    'equipmentItemOnActionTriggerAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 1000.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.2, 1.2),
        ),
        ShakeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 1000.ms,
          hz: 4,
          offset: Offset(0.0, 0.0),
          rotation: 0.087,
        ),
        FadeEffect(
          curve: Curves.easeOut,
          delay: 1000.ms,
          duration: 400.ms,
          begin: 1.0,
          end: 0.0,
        ),
        ScaleEffect(
          curve: Curves.easeOut,
          delay: 1000.ms,
          duration: 400.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(0.0, 0.0),
        ),
        MoveEffect(
          curve: Curves.easeOut,
          delay: 1000.ms,
          duration: 400.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, -200.0),
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
    _model = createModel(context, () => EquipmentChecklistModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 8000));
      setState(() {
        _model.progressValue = 0.0;
      });
      await _model.pageViewController?.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
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

    return StreamBuilder<List<EquipmentItemsRecord>>(
      stream: queryEquipmentItemsRecord(
        queryBuilder: (equipmentItemsRecord) =>
            equipmentItemsRecord.orderBy('sort'),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 24.0,
              height: 24.0,
              child: SpinKitFadingCircle(
                color: FlutterFlowTheme.of(context).primary,
                size: 24.0,
              ),
            ),
          );
        }
        List<EquipmentItemsRecord> equipmentChecklistEquipmentItemsRecordList =
            snapshot.data!;
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
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Text(
                        equipmentChecklistEquipmentItemsRecordList[
                                _model.currentIndex]
                            .name,
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).displayMedium,
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation1']!),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 0.0),
                      child: Text(
                        '${(equipmentChecklistEquipmentItemsRecordList.length - _model.currentIndex).toString()} items left!',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).titleMedium,
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation2']!),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, -1.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 120.0, 0.0, 0.0),
                    child: LinearPercentIndicator(
                      percent: _model.progressValue,
                      lineHeight: 200.0,
                      animation: true,
                      animateFromLastPercent: true,
                      progressColor: FlutterFlowTheme.of(context).primary,
                      backgroundColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      padding: EdgeInsets.zero,
                    ).animateOnPageLoad(
                        animationsMap['progressBarOnPageLoadAnimation']!),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, -1.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 100.0, 24.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: SvgPicture.asset(
                        'assets/images/hockey-bag-dark.svg',
                        width: double.infinity,
                        height: 300.0,
                        fit: BoxFit.contain,
                      ),
                    )
                        .animateOnPageLoad(
                            animationsMap['imageOnPageLoadAnimation']!)
                        .animateOnActionTrigger(
                          animationsMap['imageOnActionTriggerAnimation']!,
                        ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                        child: PageView(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: _model.pageViewController ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.vertical,
                          children: [
                            Container(),
                            Align(
                              alignment: AlignmentDirectional(0.00, -1.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 310.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 200.0,
                                  decoration: BoxDecoration(),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (animationsMap[
                                              'equipmentItemOnActionTriggerAnimation1'] !=
                                          null) {
                                        await animationsMap[
                                                'equipmentItemOnActionTriggerAnimation1']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                      setState(() {
                                        FFAppState()
                                                .equipmentChecklistCurrentIndex =
                                            FFAppState()
                                                    .equipmentChecklistCurrentIndex +
                                                1;
                                      });
                                      if (animationsMap[
                                              'imageOnActionTriggerAnimation'] !=
                                          null) {
                                        await animationsMap[
                                                'imageOnActionTriggerAnimation']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                      await _model.pageViewController?.nextPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    },
                                    child: wrapWithModel(
                                      model: _model.equipmentItemModel1,
                                      updateCallback: () => setState(() {}),
                                      updateOnChange: true,
                                      child: EquipmentItemWidget(
                                        currentIndex: 0,
                                        equipmentList:
                                            equipmentChecklistEquipmentItemsRecordList,
                                      ),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'equipmentItemOnActionTriggerAnimation1']!,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.00, -1.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 310.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 200.0,
                                  decoration: BoxDecoration(),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (animationsMap[
                                              'equipmentItemOnActionTriggerAnimation2'] !=
                                          null) {
                                        await animationsMap[
                                                'equipmentItemOnActionTriggerAnimation2']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                      setState(() {
                                        FFAppState()
                                                .equipmentChecklistCurrentIndex =
                                            FFAppState()
                                                    .equipmentChecklistCurrentIndex +
                                                1;
                                      });
                                      if (animationsMap[
                                              'imageOnActionTriggerAnimation'] !=
                                          null) {
                                        await animationsMap[
                                                'imageOnActionTriggerAnimation']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                      await _model.pageViewController?.nextPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    },
                                    child: wrapWithModel(
                                      model: _model.equipmentItemModel2,
                                      updateCallback: () => setState(() {}),
                                      updateOnChange: true,
                                      child: EquipmentItemWidget(
                                        currentIndex: 1,
                                        equipmentList:
                                            equipmentChecklistEquipmentItemsRecordList,
                                      ),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'equipmentItemOnActionTriggerAnimation2']!,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.00, -1.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 310.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 200.0,
                                  decoration: BoxDecoration(),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (animationsMap[
                                              'equipmentItemOnActionTriggerAnimation3'] !=
                                          null) {
                                        await animationsMap[
                                                'equipmentItemOnActionTriggerAnimation3']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                      setState(() {
                                        FFAppState()
                                                .equipmentChecklistCurrentIndex =
                                            FFAppState()
                                                    .equipmentChecklistCurrentIndex +
                                                1;
                                      });
                                      if (animationsMap[
                                              'imageOnActionTriggerAnimation'] !=
                                          null) {
                                        await animationsMap[
                                                'imageOnActionTriggerAnimation']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                      await _model.pageViewController?.nextPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    },
                                    child: wrapWithModel(
                                      model: _model.equipmentItemModel3,
                                      updateCallback: () => setState(() {}),
                                      updateOnChange: true,
                                      child: EquipmentItemWidget(
                                        currentIndex: 2,
                                        equipmentList:
                                            equipmentChecklistEquipmentItemsRecordList,
                                      ),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'equipmentItemOnActionTriggerAnimation3']!,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.00, -1.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 310.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 200.0,
                                  decoration: BoxDecoration(),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (animationsMap[
                                              'equipmentItemOnActionTriggerAnimation4'] !=
                                          null) {
                                        await animationsMap[
                                                'equipmentItemOnActionTriggerAnimation4']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                      setState(() {
                                        FFAppState()
                                                .equipmentChecklistCurrentIndex =
                                            FFAppState()
                                                    .equipmentChecklistCurrentIndex +
                                                1;
                                      });
                                      if (animationsMap[
                                              'imageOnActionTriggerAnimation'] !=
                                          null) {
                                        await animationsMap[
                                                'imageOnActionTriggerAnimation']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                      await _model.pageViewController?.nextPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.ease,
                                      );
                                    },
                                    child: wrapWithModel(
                                      model: _model.equipmentItemModel4,
                                      updateCallback: () => setState(() {}),
                                      updateOnChange: true,
                                      child: EquipmentItemWidget(
                                        currentIndex: 3,
                                        equipmentList:
                                            equipmentChecklistEquipmentItemsRecordList,
                                      ),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'equipmentItemOnActionTriggerAnimation4']!,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.00, -1.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 310.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 200.0,
                                  decoration: BoxDecoration(),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (animationsMap[
                                              'equipmentItemOnActionTriggerAnimation5'] !=
                                          null) {
                                        await animationsMap[
                                                'equipmentItemOnActionTriggerAnimation5']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                      setState(() {
                                        FFAppState()
                                                .equipmentChecklistCurrentIndex =
                                            FFAppState()
                                                    .equipmentChecklistCurrentIndex +
                                                1;
                                      });
                                      if (animationsMap[
                                              'imageOnActionTriggerAnimation'] !=
                                          null) {
                                        await animationsMap[
                                                'imageOnActionTriggerAnimation']!
                                            .controller
                                            .forward(from: 0.0);
                                      }
                                    },
                                    child: wrapWithModel(
                                      model: _model.equipmentItemModel5,
                                      updateCallback: () => setState(() {}),
                                      updateOnChange: true,
                                      child: EquipmentItemWidget(
                                        currentIndex: 4,
                                        equipmentList:
                                            equipmentChecklistEquipmentItemsRecordList,
                                      ),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'equipmentItemOnActionTriggerAnimation5']!,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.00, 1.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 0.0, 16.0),
                          child: smooth_page_indicator.SmoothPageIndicator(
                            controller: _model.pageViewController ??=
                                PageController(initialPage: 0),
                            count: 6,
                            axisDirection: Axis.vertical,
                            onDotClicked: (i) async {
                              await _model.pageViewController!.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: smooth_page_indicator.ExpandingDotsEffect(
                              expansionFactor: 3.0,
                              spacing: 8.0,
                              radius: 16.0,
                              dotWidth: 16.0,
                              dotHeight: 8.0,
                              dotColor: FlutterFlowTheme.of(context).zinc700,
                              activeDotColor:
                                  FlutterFlowTheme.of(context).primary,
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
